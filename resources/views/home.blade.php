@extends('layouts.base')

@section('head')

@endsection

@section('title')
Home
@endsection

@section('content')
  @include('layouts.formsButtonsHome')






  <header class="header-base p-2 justify-content-between d-flex row d-block d-lg-none" id="headerMobile">
      <div class="pos-f-t col-6">
          <nav class="navbar navbar-dark bg-dark">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span> Menu
            </button>


          </nav>
          <div class="collapse" id="navbarToggleExternalContent">
              <div class="bg-dark p-4">
                <div class="dropdown row">

                    <button class="btn text-white dropdown-toggle col-8" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Create new
                    </button>
                    <div class="dropdown-menu " aria-labelledby="dropdownMenuButton">
                      <button class="btn btn-info m-1 col-12 button-actions dropdown-item" data-toggle="modal" data-target="#modalTasks">Task</button>
                      <button class="btn btn-info m-1 col-12 button-actions dropdown-item" data-toggle="modal" data-target="#modalDelivery">Delivery</button>
                      <a href="/Feedback/Create" class="btn btn-info m-1 col-12">Feedback</a>
                      <button class="btn btn-info m-1 col-12 button-actions dropdown-item" data-toggle="modal" data-target="#modalEvent">Event</button>
                      <button class="btn btn-info m-1 col-12 button-actions dropdown-item" data-toggle="modal" data-target="#modalPosts">Post</button>
                      <button class="btn btn-info m-1 col-12 button-actions dropdown-item" data-toggle="modal" data-target="#modalReminder">Reminder</button>
                    </div>
                    <a class="col-8 mb-2 btn text-white" href="/home" tabindex="-1" aria-disabled="true">Home</a>
                    <a class="col-8 mb-2 btn text-white disabled" href="#" tabindex="-1" aria-disabled="true">Administration</a>
                    <a class="col-8 mb-2 btn text-white disabled" href="#" tabindex="-1" aria-disabled="true">Marketing</a>
                    <a class="col-8 mb-2 btn text-white disabled" href="#" tabindex="-1" aria-disabled="true">Production</a>
                </div>


              </div>
          </div>

      </div>
      <a class="col-4 pt-3 text-white" href="/logout">Log Out</a>
      <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
          @csrf
      </form>
  </header>




    <main class="container mt-3 d-block d-lg-none" id="mainMobile">

      <ul class="nav nav-pills mb-4 justify-content-between" id="pills-tab" role="tablist">
        <li class="nav-item">
          <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Posts</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Reminders</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Tasks</a>
        </li>
      </ul>

      <div class="tab-content" id="pills-tabContent">
        <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">


          <div class=" row ">
              {{-- inicio --}}

              <div class="input-group mb-3 col-12">
                  <div class="input-group-prepend">
                    <label class="input-group-text" for="clientSelect">Client:</label>
                  </div>
                  <select class="custom-select" id="clientSelect">
                    <option selected class="clientSelectOption" value="All">All</option>
                    @foreach ($clients as $client)
                        <option value="{{$client->id}}" class="clientSelectOption"> {{$client->client_name}} </option>
                    @endforeach
                  </select>
              </div>

              <div class="input-group mb-3 col-12">
                  <div class="input-group-prepend">
                    <label class="input-group-text" for="projectSelect">Project:</label>
                  </div>
                  <select class="custom-select" id="projectSelect" disabled>
                      <option selected value="All">All</option>

                  </select>
              </div>

              <div class="input-group mb-3 col-12">
                  <div class="input-group-prepend">
                    <label class="input-group-text" for="viewSelect">View:</label>
                  </div>
                  <select class="custom-select" id="viewSelect" disabled>
                      <option selected  value="All">All</option>

                  </select>
              </div>





              {{-- fin --}}
          </div>



          <div class="scroll-post scrollable " id="divPosts" >

          </div>
        </div>
        <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
          <div id="remindersBoxDiv" >


              <ul class="list-group scroll-reminders text-white p-0 bg-dark rounded" id="remindersBox">

                </ul>
          </div>
        </div>
        <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
          <div class="scroll-tasks p-0" id="tasksBoxDiv">
              <table class="table table-sm p1 " id="tasksBox">

              </table>
          </div>
        </div>





      </div>





    </main>




    <main class="container-fluid row mt-2 pr-0 d-lg-flex d-none" id="mainLG">
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
                      <option value="{{$client->id}}" class="clientSelectOption"> {{$client->client_name}} </option>
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

        <div class="col-3 scroll-post scrollable" id="divPosts">

        </div>
        {{-- Tercera seccion ( actions yu reminders ) --}}
        <div class="col-5 justify-content-center m-0 p-3">
            <div class="col-12 pt-3 row div-actions justify-content-between pr-0">
                <button class="btn btn-info mr-1 my-1 ml-0 col-3 button-actions" data-toggle="modal" data-target="#modalTasks">Task</button>
                <button class="btn btn-info mr-1 col-3 button-actions" data-toggle="modal" data-target="#modalDelivery">Delivery</button>
                <a href="/Feedback/Create" class="btn btn-info mr-0 my-1 ml-11 col-3">Feedback</a>
                <button class="btn btn-info mr-1 my-1 ml-0 col-3 button-actions" data-toggle="modal" data-target="#modalEvent">Event</button>
                <button class="btn btn-info m-1 col-3 button-actions" data-toggle="modal" data-target="#modalPosts">Post</button>
                <button class="btn btn-info mr-0 my-1 ml-1 button-actions col-3" data-toggle="modal" data-target="#modalReminder">Reminder</button>

            </div>

            <div class="col-12 mt-5 mx-0 p-0  ">


                <ul class="list-group scroll-reminders text-white p-0 bg-dark rounded" id="remindersBox">

                </ul>
            </div>

        </div>


        <div class="scrollable col-2 p-0" id="tasksBox">

        </div>






    </main>
@endsection

@section('scripts')
<script type="text/javascript">
if (window.matchMedia("(max-width: 700px)").matches) {

  document.getElementById('mainLG').innerHTML = '';

} else {
  document.getElementById('headerMobile').innerHTML = '';
  document.getElementById('mainMobile').innerHTML = '';

}
</script>


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
