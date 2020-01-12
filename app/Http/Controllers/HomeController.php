<?php

namespace App\Http\Controllers;

use App\Clients;
use App\Projects;
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
        $projects = Projects::find(1);
        $vac = compact('projects');
        return view('test', $vac);
    }
}
