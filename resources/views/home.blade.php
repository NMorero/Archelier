@extends('layouts.base')

@section('head')

@endsection

@section('title')
Home
@endsection

@section('content')
  @include('layouts.formsButtonsHome')


    <main class="container-fluid row mt-2">
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
                  <option selected class="projectSelectOption" value="All">All</option>
                  <option value="1" class="projectSelectOption">One</option>
                  <option value="2" class="projectSelectOption">Two</option>
                  <option value="3" class="projectSelectOption">Three</option>
                </select>
            </div>

            <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <label class="input-group-text" for="viewSelect">View:</label>
                </div>
                <select class="custom-select" id="viewSelect" disabled>
                  <option selected class="viewSelectOption" value="All">All</option>
                  <option value="1" class="viewSelectOption">One</option>
                  <option value="2" class="viewSelectOption">Two</option>
                  <option value="3" class="viewSelectOption">Three</option>
                </select>
            </div>




            {{-- fin --}}
        </div>


        {{-- Segunda seccion ( Posts ) --}}

        <div class="col-4 scroll-post scrollable">
            POSTS
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

                <ul class="list-group scroll-reminders border-bottom p-0">
                    <li class="list-group-item justify-content-around d-flex row reminder-li p-2"><p class="col-8">primer comentario</p>     <button class="p-0 btn button-reminder col-1 btn-danger">x</button> </li>
                    <li class="list-group-item justify-content-around d-flex row reminder-li p-2"><p class="col-8">segundo reminder</p>     <button class="p-0 btn button-reminder col-1 btn-danger">x</button> </li>
                    <li class="list-group-item justify-content-around d-flex row reminder-li p-2"><p class="col-8">1</p>     <button class="p-0 btn button-reminder col-1 btn-danger">x</button> </li>
                    <li class="list-group-item justify-content-around d-flex row reminder-li p-2"><p class="col-8">1</p>     <button class="p-0 btn button-reminder col-1 btn-danger">x</button> </li>
                    <li class="list-group-item justify-content-around d-flex row reminder-li p-2"><p class="col-8">1</p>     <button class="p-0 btn button-reminder col-1 btn-danger">x</button> </li>
                    <li class="list-group-item justify-content-around d-flex row reminder-li p-2"><p class="col-8">1</p>     <button class="p-0 btn button-reminder col-1 btn-danger">x</button> </li>
                    <li class="list-group-item justify-content-around d-flex row reminder-li p-2"><p class="col-8">1</p>     <button class="p-0 btn button-reminder col-1 btn-danger">x</button> </li>
                    <li class="list-group-item justify-content-around d-flex row reminder-li p-2"><p class="col-8">1</p>     <button class="p-0 btn button-reminder col-1 btn-danger">x</button> </li>
                    <li class="list-group-item justify-content-around d-flex row reminder-li p-2"><p class="col-8">1</p>     <button class="p-0 btn button-reminder col-1 btn-danger">x</button> </li>
                    <li class="list-group-item justify-content-around d-flex row reminder-li p-2"><p class="col-8">1</p>     <button class="p-0 btn button-reminder col-1 btn-danger">x</button> </li>
                    <li class="list-group-item justify-content-around d-flex row reminder-li p-2"><p class="col-8">1</p>     <button class="p-0 btn button-reminder col-1 btn-danger">x</button> </li>
                    <li class="list-group-item justify-content-around d-flex row reminder-li p-2"><p class="col-8">1</p>     <button class="p-0 btn button-reminder col-1 btn-danger">x</button> </li>
                    <li class="list-group-item justify-content-around d-flex row reminder-li p-2"><p class="col-8">1</p>     <button class="p-0 btn button-reminder col-1 btn-danger">x</button> </li>
                    <li class="list-group-item justify-content-around d-flex row reminder-li p-2"><p class="col-8">1</p>     <button class="p-0 btn button-reminder col-1 btn-danger">x</button> </li>
                    <li class="list-group-item justify-content-around d-flex row reminder-li p-2"><p class="col-8">1</p>     <button class="p-0 btn button-reminder col-1 btn-danger">x</button> </li>

                </ul>
            </div>

        </div>


        <div class="col-xl-2 col-lg-2 col-md-3 col-sm-2  scrollable">

            <div class="border-bottom" style="margin-bottom:15px;">

              <table class="table table-sm p1">
                        <thead class="thead-light">
                          <tr>
                            <th scope="col"></th>
                            <th scope="col">Monday 11 January</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row">•</th>
                            <td>Mark</td>
                          </tr>
                          <tr>
                            <th scope="row" class="warning">•</th>
                            <td>Mark</td>
                          </tr>
                          <tr>
                            <th scope="row">•</th>
                            <td>Jacob</td>
                          </tr>
                          <tr>
                            <th scope="row">•</th>
                            <td>Larry</td>
                          </tr>
                          <tr>
                            <th scope="row">•</th>
                            <td>Jacob</td>
                          </tr>
                          <tr>
                            <th scope="row">•</th>
                            <td>Larry</td>
                          </tr>
                          <tr>
                            <th scope="row" class="warning">•</th>
                            <td>Mark</td>
                          </tr>
                          <tr>
                            <th scope="row">•</th>
                            <td>Jacob</td>
                          </tr>
                          <tr>
                            <th scope="row">•</th>
                            <td>Larry</td>
                          </tr>
                        </tbody>
                        <thead class="thead-light">
                          <tr>
                            <th scope="col"></th>
                            <th scope="col">Tuesday 12 January</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row" class="warning">•</th>
                            <td>Mark</td>
                          </tr>
                          <tr>
                            <th scope="row">•</th>
                            <td>Jacob</td>
                          </tr>
                          <tr>
                            <th scope="row">•</th>
                            <td>Larry</td>
                          </tr>
                        </tbody>
                        <thead class="thead today">
                          <tr>
                            <th scope="col"></th>
                            <th scope="col">Wednesday 13 January</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row" class="warning">•</th>
                            <td>Mark</td>
                          </tr>
                          <tr>
                            <th scope="row">•</th>
                            <td>Jacob</td>
                          </tr>
                          <tr>
                            <th scope="row">•</th>
                            <td>Larry</td>
                          </tr>
                          <tr>
                            <th scope="row" class="warning">•</th>
                            <td>Mark</td>
                          </tr>
                          <tr>
                            <th scope="row">•</th>
                            <td>Jacob</td>
                          </tr>
                          <tr>
                            <th scope="row">•</th>
                            <td>Larry</td>
                          </tr>
                        </tbody>
                        <thead class="thead-light">
                          <tr>
                            <th scope="col"></th>
                            <th scope="col">Thursday 15 January</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row" class="warning">•</th>
                            <td>Mark</td>
                          </tr>
                          <tr>
                            <th scope="row">•</th>
                            <td>Jacob</td>
                          </tr>
                          <tr>
                            <th scope="row">•</th>
                            <td>Larry</td>
                          </tr>
                        </tbody>
                        <thead class="thead-light">
                          <tr>
                            <th scope="col"></th>
                            <th scope="col">Friday 16 January</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row" class="warning">•</th>
                            <td>Mark</td>
                          </tr>
                          <tr>
                            <th scope="row">•</th>
                            <td>Jacob</td>
                          </tr>
                          <tr>
                            <th scope="row">•</th>
                            <td>Larry</td>
                          </tr>
                          <tr>
                            <th scope="row" class="warning">•</th>
                            <td>Mark</td>
                          </tr>
                          <tr>
                            <th scope="row">•</th>
                            <td>Jacob</td>
                          </tr>
                          <tr>
                            <th scope="row">•</th>
                            <td>Larry</td>
                          </tr>
                        </tbody>

              </table>


          </div>



            </div>




    </main>
@endsection

@section('scripts')

<script src="{{asset('js/home.js')}}"></script>
<script>
    // Add the following code if you want the name of the file appear on select
    $(".custom-file-input").on("change", function() {
      var fileName = $(this).val().split("\\").pop();
      $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
    });
    </script>
@endsection
