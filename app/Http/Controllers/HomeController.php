<?php

namespace App\Http\Controllers;

use App\Clients;
use App\Deliveries;
use App\Events;
use App\Images;
use App\LeaderOfDeveloper;
use App\Persons;
use App\Posts;
use App\PRLeaders;
use App\Projects;
use App\ProjectViews;
use App\Reminders;
use App\Tasks;
use App\Templates;
use App\User;
use App\Views;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $clients = Clients::all();
        $vac = compact('clients');
        return view('home', $vac);
    }

    public function test(){
        $clients = Clients::all();
        $vac = compact('clients');
        return view('test', $vac);
    }

    public function getProjectsByClient($client){
        $projects = Projects::where('client_id', 'LIKE', $client)->get();
        return $projects;
    }

    public function getViewsByProject($project){
        $views = ProjectViews::where('project_id', 'LIKE', $project)->get();
        return $views;
    }

    public function getPosts($client, $project, $view){


        if($client === 'All'){
            $posts = Posts::orderBy('id', 'DESC')->get();
        }else{
            if($project === 'All'){
                $posts = Posts::where('client_id', 'LIKE', $client)->orderBy('id','DESC')->get();
            }else{
                if($view === 'All'){
                    $posts = Posts::where('client_id', 'LIKE', $client)->where('project_id', 'LIKE', $project)->orderBy('id','DESC')->get();
                }else{
                    $posts = Posts::where('client_id', 'LIKE', $client)->where('project_id', 'LIKE', $project)->where('view_id', 'LIKE', $view)->orderBy('id','DESC')->get();
                }

            }
        }





        foreach($posts as $post){
            $user = User::find($post['user_id']);
            $post['user_name'] = $user['username'];



            $project = Projects::find($post['project_id']);
            $post['project_name'] = $project['project_name'];


            $date = $post['created_at'];


            $date = date('h-m-d',strtotime($post['created_at']));
            //Print out the day that our date fell on.
            $post['date'] = $date;

        }
        return $posts;
    }


    public function getReminders(){
        $id = Auth::user()->id;
        $reminders = Reminders::where('user_id', 'LIKE', $id)->get();
        return $reminders;

    }
    public function deleteReminder($id){
        $reminder = Reminders::find($id);
        $reminder->delete();

        return ['status' => 'ok'];
    }


    public function getTasks(){

        $user = User::find(Auth::id());
        if($user->rol_id == 4){
            $taskDB = Tasks::where('user_id', 'LIKE', Auth::id());
            $PRLeader = PRLeaders::where('user_id', 'LIKE', Auth::id())->get();
            $developersOfLeader = LeaderOfDeveloper::where('leader_id', 'LIKE', $PRLeader->id);
            foreach($developersOfLeader as $dev){
                $taskDB->orWhere('user_id', 'LIKE', $dev->id);
            }
            $taskDB->orderBy('end_date')->get();
        }else{
            $tasksDB = Tasks::orderBy('end_date')->get();
        }
        $events = Events::orderBy('end_date')->get();
        $tasks = [];
        $dates = [];

        foreach($tasksDB as $task){
            $task['user'] = $task->user;
            $task['project'] = $task->project;
            $task['client'] = $task->client->person;
            $endDate = $task->end_date;
            if (!array_key_exists($endDate, $dates)) {
                array_push($dates, $endDate);
            }
        }


        foreach ($events as $event) {
          $event['client'] = $event->client;
          $event['project'] = $event->project;
            $endDate = $event->end_date;
          if (!array_key_exists($endDate, $dates)) {
            array_push($dates, $endDate);
        }
        }

        $compare_function = function($a,$b) {

            $a_timestamp = strtotime($a); // convert a (string) date/time to a (int) timestamp
            $b_timestamp = strtotime($b);

            // new feature in php 7
            return $a_timestamp <=> $b_timestamp;

                    };
        usort($dates, $compare_function);




        foreach($dates as $date){

            $dateInfo = $date;
            //Convert the dateInfo string into a unix timestamp.
            $unixTimestamp = strtotime($dateInfo);
            //Get the day of the week using PHP's date function.
            $dayOfWeek = date("l", $unixTimestamp);
            $day = date('d', strtotime($date));


            $tasks[$date]['day'] = $dayOfWeek . ' ' . $day;
            $tasks[$date]['projects'] = [];
            $tasks[$date]['events'] = [];
        }

        foreach($tasksDB as $taskDB){
            $endDate = $taskDB->end_date;

            if (array_key_exists($endDate, $tasks)) {
                array_push($tasks[$endDate]['projects'], $taskDB);
            }


        }

        foreach ($events as $event) {
          $endDateEvent = $event->end_date;
          if (array_key_exists($endDateEvent, $tasks)) {
              array_push($tasks[$endDateEvent]['events'], $event);
          }
        }

        return $tasks;
    }


    public function getUsers(){
        $users = User::all();
        return $users;
    }


    public function getTemplates(){
      $templates = Templates::all();
      return $templates;
    }


    public function addReminder($formData){

        $formData = json_decode($formData, true);

        $reminder = new Reminders;
        $reminder->message = $formData['message'];
        $reminder->user_id = Auth::id();
        if(isset($formData['end_date']) && !empty($formData['end_date'])){
            $reminder->end_date = $formData['end_date'];
        }
        $reminder->save();

        return ['status' => 'ok'];
    }

    public function addTask($formData){
        $formData = json_decode($formData, true);

        $task = new Tasks;
        $task->message = $formData['message'];
        $task->status = $formData['status'];
        $task->end_date = $formData['end_date'];
        $task->user_id = $formData['user'];
        $task->project_id = $formData['project'];
        $task->client_id = $formData['client'];

        if(isset($formData['view']) && !empty($formData['view'])) {
            $task->view_id = $formData['view'];
        }
        $task->save();

        return ['status' => 'ok'];
    }


    function addPost(Request $request){



        $post = new Posts;
        $post->title = $request['PostBtnTitle'];
        $post->message = $request['PostBtnMessage'];
        $post->user_id = Auth::id();
        $post->type = 'post';
        $post->client_id = $request['PostBtnClientSelect'];
        $post->project_id = $request['PostBtnProjectSelect'];

        if(isset($request['PostBtnViewSelect']) && !empty($request['PostBtnViewSelect']) && $request['PostBtnViewSelect'] != 'none'){
            $post->view_id = $request['PostBtnViewSelect'];
        }


        if(isset($request['PostBtnFile']) && !empty($request['PostBtnFile'])){
            $imageName = date("Y-m-d"). '-' . time() .'.'. $request['PostBtnFile']->getClientOriginalExtension();
            $request['PostBtnFile']->move(
            base_path() . '/public/upload/posts', $imageName
            );

            $post->image = '/upload/posts/' . $imageName;

        }
        $post->save();

        return 'se cargo el post';


    }

    function addEvent($formData){
      $formData = json_decode($formData, true);
      $event = new Events;
      $event->message = $formData['message'];
      $event->end_date = $formData['end_date'];

      if(isset($formData['client']) && !empty($formData['client'])){
          $event->client_id = $formData['client'];
      }

      if(isset($formData['project']) && !empty($formData['project'])){
          $event->project_id = $formData['project'];
      }

      if(isset($formData['view']) && !empty($formData['view'])){
          $event->view_id = $formData['view'];
      }

      $event->save();

      return ['status' => 'ok'];

    }

    function addDelivery($formData){
      $formData = json_decode($formData, true);
      $delivery = new Deliveries;

      if(isset($formData['message']) && !empty($formData['message'])){
            $delivery->comment = $formData['message'];
      }

      $delivery->client_id = $formData['client'];
      $delivery->project_id = $formData['project'];

      if(isset($formData['view']) && !empty($formData['view'])){
          $delivery->view_id = $formData['view'];
      }

      $delivery->template_id = $formData['template'];
      $delivery->save();

      return ['status' => 'ok'];

    }



}
