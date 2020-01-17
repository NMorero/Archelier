<?php

namespace App\Http\Controllers;

use App\Clients;
use App\Images;
use App\Persons;
use App\Posts;
use App\Projects;
use App\ProjectViews;
use App\Reminders;
use App\Tasks;
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
        $Posts = Posts::find(1);
        $vac = compact('Posts');
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
            $posts = Posts::all();
        }else{
            if($project === 'All'){
                $posts = Posts::where('client_id', 'LIKE', $client)->get();
            }else{
                if($view === 'All'){
                    $posts = Posts::where('client_id', 'LIKE', $client)->where('project_id', 'LIKE', $project)->get();
                }else{
                    $posts = Posts::where('client_id', 'LIKE', $client)->where('project_id', 'LIKE', $project)->where('view_id', 'LIKE', $view)->get();
                }

            }
        }





        foreach($posts as $post){
            $user = User::find($post['user_id']);
            $post['user_name'] = $user['username'];



            $project = Projects::find($post['project_id']);
            $post['project_name'] = $project['project_name'];


            $date = $post['created_at'];

            //Convert the date string into a unix timestamp.
            $unixTimestamp = strtotime($date);

            //Get the day of the week using PHP's date function.
            $dayOfWeek = date("l", $unixTimestamp);

            $day = date('d', strtotime($post['created_at']));
            $time = date('H:i', strtotime($post['created_at']));
            //Print out the day that our date fell on.
            $post['date'] = $dayOfWeek . ' '.  $day  . ' - ' . $time;

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
        $tasksDB = Tasks::all();
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

        foreach($dates as $date){

            $dateInfo = $date;
            //Convert the dateInfo string into a unix timestamp.
            $unixTimestamp = strtotime($dateInfo);
            //Get the day of the week using PHP's date function.
            $dayOfWeek = date("l", $unixTimestamp);
            $day = date('d', strtotime($date));


            $tasks[$date]['day'] = $dayOfWeek . ' ' . $day;
            $tasks[$date]['projects'] = [];
        }
        foreach($tasksDB as $taskDB){
            $endDate = $taskDB->end_date;

            if (array_key_exists($endDate, $tasks)) {
                array_push($tasks[$endDate]['projects'], $taskDB);
            }
        }


        return $tasks;
    }


    public function getUsers(){
        $users = User::all();
        return $users;
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
        if(isset($formData['view']) && !empty($formData['view'])){
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



}
