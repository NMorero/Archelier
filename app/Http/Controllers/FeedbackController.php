<?php

namespace App\Http\Controllers;

use App\Clients;
use Illuminate\Http\Request;
use App\Feedbacks;
use App\Posts;
use Illuminate\Support\Facades\Auth;

class FeedbackController extends Controller
{
    public function create(){
        $clients = Clients::all();
        $vac = compact('clients');
        return view('createFeedback', $vac);
    }

    public function addFeedback(Request $request){
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
    foreach($request['comments'] as $comment){
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
    if(isset($request['view']) && $request['view'] != 'none'){
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
    $post->type = 'feedback';
    if(isset($request['view']) && $request['view'] != 'none'){
        $post->view_id = $request['view'];
    }
    $post->feedback_id = $feedback->id;
    $post->save();


        return ['status' => 'ok'];
    }





    public function edit($id){
        $feedback = Feedbacks::find($id);
        $feedback['comments'] = json_decode($feedback->message, true);
        $id = $id;


        $vac = compact('feedback', 'id');
        return view('feedbackEdit', $vac);
    }

    public function saveFeedbackChange(Request $request){
        $feedback = Feedbacks::find($request['id']);
        $feedback->message = $request['comments'];
        $feedback->save();


        $post = new Posts();

        $post->title = 'New Feedback';
        $post->message = ' ';
        $post->image = $feedback->image;
        $post->user_id = Auth::id();
        $post->client_id = $feedback->client_id;
        $post->project_id = $feedback->project_id;
        $post->type = 'feedback';
        if(isset($feedback->view_id) && $feedback->view_id != 'none'){
            $post->view_id = $feedback->view_id;
        }
        $post->feedback_id = $request['id'];
        $post->save();





        return ['status' => 'Listo'];
    }

}
