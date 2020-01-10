@extends('layouts.base')

@section('head')

@endsection

@section('title')
Home
@endsection

@section('content')
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
                  <option value="1">One</option>
                  <option value="2">Two</option>
                  <option value="3">Three</option>
                </select>
            </div>

            <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <label class="input-group-text" for="clientSelect">View:</label>
                </div>
                <select class="custom-select" id="clientSelect">
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
                <select class="custom-select" id="clientSelect">
                  <option selected>All</option>
                  <option value="1">One</option>
                  <option value="2">Two</option>
                  <option value="3">Three</option>
                </select>
            </div>


            {{-- fin --}}
        </div>


        {{-- Segunda seccion ( Posts ) --}}

        <div class="col-4 scroll-post">
            As you can see, once there's enough text in this box, the box will grow scroll bars... that's why we call it a scroll box! You could also place an image into the scroll box.
            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quis, nisi porro. Ullam unde hic quis illum a ipsa quas officiis? Consequatur impedit aliquam voluptatem officiis quos quia aliquid animi sint!
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia nesciunt eaque dolor incidunt eum quisquam fugit quam, id laudantium est explicabo facere ipsam iure rerum provident, architecto autem praesentium alias!
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi laudantium optio rem autem ad ullam nulla, error aliquid et nesciunt. Molestias facilis aut aspernatur, et alias libero error consequuntur perspiciatis?
            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Et tenetur, iure molestias placeat ipsum officiis! Error repellat esse illo, ratione, neque fugit, ipsum iusto magnam libero voluptatibus perspiciatis suscipit necessitatibus.
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo porro quaerat enim modi ipsam voluptates minus deserunt architecto nam dolorem unde veritatis, adipisci dolorum consectetur. Voluptatem excepturi blanditiis rerum voluptas?
            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Blanditiis debitis velit, sit placeat iure suscipit itaque aut nisi ut et eum beatae exercitationem veritatis, mollitia aspernatur modi minus eveniet. Doloribus?
        </div>

        <div class="col-4 justify-content-center">
            <div class="col-12 pt-3 row div-actions justify-content-between">
                <button class="btn btn-primary m-1 col-3 button-actions">Task</button>
                <button class="btn btn-primary m-1 col-3 button-actions">Delivery</button>
                <button class="btn btn-primary m-1 col-3 button-actions">Feedback</button>
                <button class="btn btn-primary m-1 col-3 button-actions">Event</button>
                <button class="btn btn-primary m-1 col-3 button-actions">New Post</button>
                <button class="btn btn-primary m-1 col-3 button-actions">Reminder</button>

            </div>

            <div class="col-11 mt-3 p-3">
                <h3 class=" justify-content-between row mb-2"><p class="col-5">Reminders</p> <button class="btn btn-success col-2 mr-4 button-add-reminder">Add</button></h3>

                <ul class="list-group scroll-reminders border-bottom p-0">
                    <li class="list-group-item justify-content-between d-flex"><p>1</p>     <button class="btn btn-primary">Delete</button> </li>
                    <li class="list-group-item justify-content-between d-flex"><p>1</p>     <button class="btn btn-primary">Delete</button> </li>
                    <li class="list-group-item justify-content-between d-flex"><p>1</p>     <button class="btn btn-primary">Delete</button> </li>
                    <li class="list-group-item justify-content-between d-flex"><p>1</p>     <button class="btn btn-primary">Delete</button> </li>
                    <li class="list-group-item justify-content-between d-flex"><p>1</p>     <button class="btn btn-primary">Delete</button> </li>
                    <li class="list-group-item justify-content-between d-flex"><p>1</p>     <button class="btn btn-primary">Delete</button> </li>
                    <li class="list-group-item justify-content-between d-flex"><p>1</p>     <button class="btn btn-primary">Delete</button> </li>
                    <li class="list-group-item justify-content-between d-flex"><p>1</p>     <button class="btn btn-primary">Delete</button> </li>
                    <li class="list-group-item justify-content-between d-flex"><p>1</p>     <button class="btn btn-primary">Delete</button> </li>
                    <li class="list-group-item justify-content-between d-flex"><p>1</p>     <button class="btn btn-primary">Delete</button> </li>
                    <li class="list-group-item justify-content-between d-flex"><p>1</p>     <button class="btn btn-primary">Delete</button> </li>
                    <li class="list-group-item justify-content-between d-flex"><p>1</p>     <button class="btn btn-primary">Delete</button> </li>
                    <li class="list-group-item justify-content-between d-flex"><p>1</p>     <button class="btn btn-primary">Delete</button> </li>
                    <li class="list-group-item justify-content-between d-flex"><p>1</p>     <button class="btn btn-primary">Delete</button> </li>
                    <li class="list-group-item justify-content-between d-flex"><p>1</p>     <button class="btn btn-primary">Delete</button> </li>

                </ul>
            </div>

        </div>



    </main>
@endsection

@section('scripts')

@endsection
