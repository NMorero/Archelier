@extends('layouts.adminBase')



@section('content')
    <main class="p-4 d-flex row  justify-content-around">

        @foreach ($projects as $project)
        <div class="card col-3" >

            <div class="card-body">
                <h5 class="card-title">Project: {{$project->project_name}}</h5>
                <p class="card-text">Delivery date: {{$project->delivery_date}}</p>
                <p class="card-text">Client: {{$project->client}}</p>
                <p class="card-text">Manager: {{$project->manager}}</p>
                <p class="card-text">Leader: {{$project->leader}}</p>
              <a href="/Admin/Projects/Views/{{$project->id}}" class="btn btn-primary">Views</a>
              @if (auth()->user()->roles->rol == 'admin' || auth()->user()->roles->rol == 'PRmanager' || auth()->user()->roles->rol == 'PRleader')
              <a href="/Admin/Projects/Delete/{{$project->id}}" class="btn btn-danger">Delete</a>
              @endif
            </div>
          </div>
        @endforeach


    </main>






@endsection
