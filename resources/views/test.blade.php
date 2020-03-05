@extends('layouts.base')
@section('content')


<h1>{{Auth::user()}}</h1>





@endsection

@section('scripts')
  <script src="{{asset('js/home.js')}}"></script>

@endsection
