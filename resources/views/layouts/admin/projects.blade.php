@extends('layouts.adminBase')


@section('projectAddBtn')
<a class="col-3 buttons-header-admin text-center text-center text-decoration-none shadow py-1" data-toggle="modal" href="#exampleModal" >+ Project</a>
@endsection


@section('head')

<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

@endsection

@section('content')


  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">NEW PROJECT</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form action="/Admin/Projects/addProject" id="projectsForm" method="post">
                @csrf

                <div class="form-group">
                    <label for="projectName">Project name</label>
                    <input type="text" name="projectName" class="form-control" id="projectName" aria-describedby="projectName" required>
                </div>

                <div class="form-group">
                    <label for="deliveryDate">Delivery date</label>
                    <input type="date" name="deliveryDate" class="form-control" id="deliveryDate" aria-describedby="deliveryDate" >
                </div>


                <div class="form-group">
                    <label for="client">Client</label>
                    <select class="custom-select" name="client" id="" required>
                        <option value="none">Select..</option>
                        @foreach ($clients as $client)
                            <option value="{{$client->id}}">{{$client->client_name}}</option>
                        @endforeach
                    </select>
                </div>

                <div class="form-group">
                    <label for="manager">Manager</label>
                    <select class="custom-select" name="manager" id="" required>
                        <option value="none">Select..</option>
                        @foreach ($managers as $manager)
                            <option value="{{$manager->id}}">{{$manager->name}}</option>
                        @endforeach
                    </select>
                </div>

                <div class="form-group">
                    <label for="leader">Leader</label>
                    <select class="custom-select" name="leader" id="">
                        <option value="none">Select..</option>
                        @foreach ($leaders as $leader)
                            <option value="{{$leader->id}}">{{$leader->name}}</option>
                        @endforeach
                    </select>
                </div>

                <div class="form-group mb-3">
                    <label for="thumbnail">Thumbnail</label>
                    <div class="custom-file"><br>
                        <input type="file" class="custom-file-input" name="thumbnail" id="thumbnail">
                        <label class="custom-file-label" for="thumbnail">Choose file</label>
                    </div>
                </div>



                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary">Add</button>
                </div>
            </form>
        </div>


      </div>
    </div>
  </div>
    <main class="p-4 pt-0 bg-lightGrey" >

        <div class="carousel1 px-5 divHeightCarousel mb-4" id="carrusel1">


    </div>
    <button class="next rounded-circle bg-dark text-white border-0" ><i class="fas fa-chevron-right"></i></button>



        <div class="carousel2 px-5 divHeightCarousel" id="carrusel2">


    </div>


    </main>




@endsection

@section('scripts')
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script type="text/javascript" src="{{asset('/js/projects.js')}}">
  </script>

@endsection
