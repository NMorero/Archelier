@extends('layouts.adminBase')

@section('head')

<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
@endsection

@section('content')
    <main class="p-4 " >
        <div class="carousel1 px-5">


        @foreach ($projects as $project)


            <div>
                <h5 class="">Project: {{$project->project_name}}</h5>
                <p class="">Delivery date: {{$project->delivery_date}}</p>
                <p class="">Client: {{$project->client}}</p>
                <p class="">Manager: {{$project->manager}}</p>
                <p class="">Leader: {{$project->leader}}</p>
              <a href="/Admin/Projects/Views/{{$project->id}}" class="btn btn-primary">Views</a>
              @if (auth()->user()->roles->rol == 'admin' || auth()->user()->roles->rol == 'PRmanager' || auth()->user()->roles->rol == 'PRleader')
              <a href="/Admin/Projects/Delete/{{$project->id}}" class="btn btn-danger">Delete</a>
              @endif
            </div>

        @endforeach

    </div>
    </main>






@endsection

@section('scripts')

<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script type="text/javascript">


$(document).ready(function(){
  $('.carousel1').slick({
    arrows:true,

    slidesToShow: 6,
    slidesToScroll: 1
  });
});

  </script>
@endsection
