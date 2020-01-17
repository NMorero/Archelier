@extends('layouts.base')

@section('head')

@endsection

@section('title')
Home
@endsection

@section('content')
  @include('layouts.formsButtonsHome')


    <main class="container-fluid row mt-2 pr-0">
        {{-- Primer Seccion ( Filtros ) --}}
        <div class="col-2">
            {{-- inicio --}}

            <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <label class="input-group-text" for="clientSelect">Client:</label>
                </div>
                <select class="custom-select" id="clientSelect">
                  <option selected class="clientSelectOption" value="All">All</option>
                  @foreach ($clients as $client)
                      <option value="{{$client->id}}" class="clientSelectOption"> {{$client->person->name}} </option>
                  @endforeach
                </select>
            </div>

            <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <label class="input-group-text" for="projectSelect">Project:</label>
                </div>
                <select class="custom-select" id="projectSelect" disabled>
                    <option selected value="All">All</option>

                </select>
            </div>

            <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <label class="input-group-text" for="viewSelect">View:</label>
                </div>
                <select class="custom-select" id="viewSelect" disabled>
                    <option selected  value="All">All</option>

                </select>
            </div>




            {{-- fin --}}
        </div>


        {{-- Segunda seccion ( Posts ) --}}

        <div class="col-4 scroll-post scrollable" id="divPosts">

        </div>
        {{-- Tercera seccion ( actions yu reminders ) --}}
        <div class="col-4 justify-content-center">
            <div class="col-12 pt-3 row div-actions justify-content-between">
                <button class="btn btn-info m-1 col-3 button-actions" data-toggle="modal" data-target="#modalTasks">Task</button>
                <button class="btn btn-info m-1 col-3 button-actions" data-toggle="modal" data-target="#modalDelivery">Delivery</button>
                <button class="btn btn-info m-1 col-3 button-actions" data-toggle="modal" data-target="#modalFeedback">Feedback</button>
                <button class="btn btn-info m-1 col-3 button-actions" data-toggle="modal" data-target="#modalEvent">Event</button>
                <button class="btn btn-info m-1 col-3 button-actions" data-toggle="modal" data-target="#modalPosts">New Post</button>
                <button class="btn btn-info m-1 col-3 button-actions" data-toggle="modal" data-target="#modalReminder">Reminder</button>

            </div>

            <div class="col-11 mt-5 ">
                <h3 class=" justify-content-between row mb-2"><p class="col-5">Reminders</p></h3>

                <ul class="list-group scroll-reminders text-white p-0 bg-dark rounded" id="remindersBox">

                </ul>
            </div>

        </div>


        <div class="scrollable col-2 p-0">
            <table class="table table-sm p1 " id="tasksBox">

            </table>
        </div>






    </main>
@endsection

@section('scripts')

<script src="{{asset('js/home.js')}}"></script>
<script src="{{asset('js/homeButtons.js')}}"></script>
<script>
    // Add the following code if you want the name of the file appear on select
    $(".custom-file-input").on("change", function() {
      var fileName = $(this).val().split("\\").pop();
      $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
    });
    </script>
@endsection
