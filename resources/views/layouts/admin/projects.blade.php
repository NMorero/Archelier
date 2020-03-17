@extends('layouts.adminBase')

@section('head')

<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
@endsection

@section('content')
    <main class="p-4 bg-lightGrey" >
        <div class="carousel1 px-5">


        @foreach ($projects as $project)


            <div class="p-2">
                <div class="rounded bg-white p-2" style="height:45vh">
                <h6 class="" style="height:10%">{{$project->project_name}}</h6>
                <p class="">{{$project->client}}</p>
                <div class="row">
                    <img class="col-12" src="{{asset('/resorces/imgExample2.svg')}}"  alt="">
                    <div class="col-12 row text-center pr-4 pl-2 ml-2 mt-1">
                        <img class="col-4 py-1 px-0" src="{{asset('/resorces/imgExample2.svg')}}" alt="" >
                        <img class="col-4 py-1 px-0" src="{{asset('/resorces/imgExample2.svg')}}" alt="" >
                        <img class="col-4 py-1 px-0" src="{{asset('/resorces/imgExample2.svg')}}" alt="" >
                    </div>
                </div>
                <p class="row justify-content-between mt-1" style="text-transform:uppercase"><span class="col-5">{{$project->status}}</span> <span class="col-6 text-right">{{$project->delivery_date}}</span></p>
                <div class="row">
                    <p class="rounded-cicle col-3 " onmouseover="document.getElementById('div'+{{$project->id}}).style.display = 'block';" onmouseout="document.getElementById('div'+{{$project->id}}).style.display = 'none';">{{substr($project['manager']['name'], 0,1)}}{{substr($project['manager']['lastname'], 0,1)}}</p>
                <div class="rounded bg-white mt-3 ml-2" id="div{{$project->id}}" style="position:absolute;display:none">{{$project['manager']['name']}}{{$project['manager']['lastname']}}</div>
                <p class="rounded-cicle col-3" onmouseover="document.getElementById('leader'+{{$project->id}}).style.display = 'block';" onmouseout="document.getElementById('leader'+{{$project->id}}).style.display = 'none';">{{substr($project['leader']['name'], 0,1)}}{{substr($project['leader']['lastname'], 0,1)}}</p>
                <div class="rounded bg-white mt-3 ml-5" id="leader{{$project->id}}" style="position:absolute;display:none">{{$project['leader']['name']}}{{$project['leader']['lastname']}}</div>

                </div>




                {{-- <a href="/Admin/Projects/Views/{{$project->id}}" class="btn btn-primary">Views</a>
              @if (auth()->user()->roles->rol == 'admin' || auth()->user()->roles->rol == 'PRmanager' || auth()->user()->roles->rol == 'PRleader')
              <a href="/Admin/Projects/Delete/{{$project->id}}" class="btn btn-danger">Delete</a>
              @endif --}}
                </div>
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
