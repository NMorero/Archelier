<?php

namespace App\Http\Controllers;

use App\Clients;
use App\Persons;
use App\Posts;
use App\Projects;
use App\ProjectViews;
use App\User;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

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

    public function getPosts(){
        $posts = Posts::all();
        foreach($posts as $post){
            $user = User::find($post['user_id']);
            $person = Persons::find($user['person_id']);
            $post['user_id'] = $person['name'];



            $project = Projects::find($post['project_id']);
            $post['project_id'] = $project['project_name'];



        }
        return $posts;
    }
}
