@extends('layouts.adminBase')

@section('head')

<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

@endsection

@section('content')
    <main class="p-4 pt-0 bg-lightGrey" >

        <div class="carousel1 px-5" id="carrusel1">


    </div>
    <button class="next rounded-circle bg-dark text-white border-0" ><i class="fas fa-chevron-right"></i></button>



        <div class="carousel2 px-5" id="carrusel2">


    </div>


    </main>




@endsection

@section('scripts')
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script type="text/javascript" src="{{asset('/js/projects.js')}}">
  </script>

@endsection
