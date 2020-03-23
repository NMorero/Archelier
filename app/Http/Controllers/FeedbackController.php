<?php

namespace App\Http\Controllers;

use App\Clients;
use App\Deliveries;
use App\Developers;
use App\Events;
use App\Feedbacks;
use App\Images;
use App\LeaderOfDeveloper;
use App\ManagerOfLeaders;
use App\Persons;
use App\Posts;
use App\PRLeaders;
use App\ProjectDevelopers;
use App\ProjectLeaders;
use App\ProjectManagers;
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

class FeedbackController extends Controller
{
    public function create()
    {
        $clients = [];
        $id = Auth::user()->id;

        if (auth()->user()->roles->rol == 'developer'){
            $dev = Developers::where('user_id', 'LIKE', $id)->get();
            $devProjects = ProjectDevelopers::where('developer_id','LIKE',$dev[0]->id)->get();

            foreach($devProjects as $devProject){
                $project = Projects::find($devProject->id);
                $client = Clients::find($project->client_id);
                $clients[] = $client;
            }
        }else if(auth()->user()->roles->rol == 'PRleader'){
            $lead = ProjectLeaders::where('user_id', 'LIKE', $id)->get();
            $leadProjects = Projects::where('leader_id', 'LIKE', $lead[0]->id)->get();
            foreach($leadProjects as $leadProject){
                $project = Projects::find($leadProject->id);
                $client = Clients::find($project->client_id);
                $clients[] = $client;
            }
        }else if(auth()->user()->roles->rol == 'PRmanager'){
            $man = ProjectManagers::where('user_id', 'LIKE', $id)->get();
            $manProjects = Projects::where('manager_id', 'LIKE', $man[0]->id)->get();
            foreach($manProjects as $manProject){
                $project = Projects::find($manProject->id);
                $client = Clients::find($project->client_id);
                $clients[] = $client;
            }
        }else if(auth()->user()->roles->rol == 'admin'){
            $clients = Clients::all();
        }
        $vac = compact('clients');
        return view('createFeedback', $vac);
    }

    public function addFeedback(Request $request)
    {
        $b64 = $request['base64'];

        define('UPLOAD_DIR', 'upload/feedbacks/');
        $img = $b64;
        $img = str_replace('data:image/jpeg;base64,', '', $img);
        $img = str_replace(' ', '+', $img);
        $data = base64_decode($img);
        $file = UPLOAD_DIR . uniqid() . '.jpg';
        $success = file_put_contents($file, $data);
        print $success ? $file : 'Unable to save the file.';

        $feedback = new Feedbacks;
        $comentaries = [];
        $i = 0;
        foreach ($request['comments'] as $comment) {
            $i++;
            $commentary = [
                'comment' => $comment,
                'status' => 'undone',
                'id' => $i
            ];
            array_push($comentaries, $commentary);
        }


        $feedback->message = json_encode($comentaries);
        $feedback->client_id = $request['client'];
        $feedback->project_id = $request['project'];
        if (isset($request['view']) && $request['view'] != 'none') {
            $feedback->view_id = $request['view'];
        }
        $feedback->image = $file;
        $feedback->save();
        $post = new Posts();

        $post->title = 'New Feedback';
        $post->message = ' ';
        $post->image = $file;
        $post->user_id = Auth::id();
        $post->client_id = $request['client'];
        $post->project_id = $request['project'];
        if (isset($request['type']) && !empty($request['type'])) {
            $post->type = $request['type'];
        }
        if (isset($request['view']) && $request['view'] != 'none') {
            $post->view_id = $request['view'];
        }
        $post->feedback_id = $feedback->id;
        $post->save();


        return ['status' => 'ok'];
    }





    public function edit($id)
    {
        $feedback = Feedbacks::find($id);
        $feedback['comments'] = json_decode($feedback->message, true);
        $id = $id;


        $vac = compact('feedback', 'id');
        return view('feedbackEdit', $vac);
    }

    public function saveFeedbackChange(Request $request)
    {
        $feedback = Feedbacks::find($request['id']);
        $feedback->message = $request['comments'];
        $feedback->save();


        $post = new Posts();

        $post->title = 'Feedback edited';
        $post->message = ' ';
        $post->image = $feedback->image;
        $post->user_id = Auth::id();
        $post->client_id = $feedback->client_id;
        $post->project_id = $feedback->project_id;
        $post->type = 'feedback';
        if (isset($feedback->view_id) && $feedback->view_id != 'none') {
            $post->view_id = $feedback->view_id;
        }
        $post->feedback_id = $request['id'];
        $post->save();





        return ['status' => 'Listo'];
    }
}
