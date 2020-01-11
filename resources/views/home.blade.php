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
                  <option selected>All</option>
                  @foreach ($clients as $client)
                      <option value=" {{$client->id}} "> {{$client->person->name}} </option>
                  @endforeach
                </select>
            </div>

            <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <label class="input-group-text" for="clientSelect">View:</label>
                </div>
                <select class="custom-select" id="clientSelect" disabled>
                  <option selected>All</option>
                  <option value="1">One</option>
                  <option value="2">Two</option>
                  <option value="3">Three</option>
                </select>
            </div>

            <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <label class="input-group-text" for="clientSelect">Project:</label>
                </div>
                <select class="custom-select" id="clientSelect" disabled>
                  <option selected>All</option>
                  <option value="1">One</option>
                  <option value="2">Two</option>
                  <option value="3">Three</option>
                </select>
            </div>


            {{-- fin --}}
        </div>


        {{-- Segunda seccion ( Posts ) --}}

        <div class="col-4 scroll-post scrollable">
            As you can see, once there's enough text in this box, the box will grow scroll bars... that's why we call it a scroll box! You could also place an image into the scroll box.
            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quis, nisi porro. Ullam unde hic quis illum a ipsa quas officiis? Consequatur impedit aliquam voluptatem officiis quos quia aliquid animi sint!
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia nesciunt eaque dolor incidunt eum quisquam fugit quam, id laudantium est explicabo facere ipsam iure rerum provident, architecto autem praesentium alias!
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi laudantium optio rem autem ad ullam nulla, error aliquid et nesciunt. Molestias facilis aut aspernatur, et alias libero error consequuntur perspiciatis?
            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Et tenetur, iure molestias placeat ipsum officiis! Error repellat esse illo, ratione, neque fugit, ipsum iusto magnam libero voluptatibus perspiciatis suscipit necessitatibus.
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo porro quaerat enim modi ipsam voluptates minus deserunt architecto nam dolorem unde veritatis, adipisci dolorum consectetur. Voluptatem excepturi blanditiis rerum voluptas?
            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Blanditiis debitis velit, sit placeat iure suscipit itaque aut nisi ut et eum beatae exercitationem veritatis, mollitia aspernatur modi minus eveniet. Doloribus?
        </div>
        {{-- Tercera seccion ( actions yu reminders ) --}}
        <div class="col-4 justify-content-center">
            <div class="col-12 pt-3 row div-actions justify-content-between">
                <button class="btn btn-info m-1 col-3 button-actions" data-toggle="modal" data-target="#modalTasks">Task</button>
                <button class="btn btn-info m-1 col-3 button-actions" data-toggle="modal" data-target="#modal2">Delivery</button>
                <button class="btn btn-info m-1 col-3 button-actions">Feedback</button>
                <button class="btn btn-info m-1 col-3 button-actions">Event</button>
                <button class="btn btn-info m-1 col-3 button-actions">New Post</button>
                <button class="btn btn-info m-1 col-3 button-actions">Reminder</button>

            </div>

            <div class="col-11 mt-3 ">
                <h3 class=" justify-content-between row mb-2"><p class="col-5">Reminders</p> <button class="btn btn-success col-2 mr-4 button-add-reminder">Add</button></h3>

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

@endsection
