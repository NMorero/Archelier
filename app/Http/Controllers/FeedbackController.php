<?php

namespace App\Http\Controllers;

use App\Clients;
use Illuminate\Http\Request;
use App\Feedbacks;
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
    $feedback->message = json_encode($request['comments']);
    $feedback->client_id = $request['client'];
    $feedback->project_id = $request['project'];
    if(isset($request['view']) && $request['view'] != 'All'){
        $feedback->view_id = $request['view'];
    }
    $feedback->image = $file;
    $feedback->save();


        return ['status' => 'ok'];
    }


}
