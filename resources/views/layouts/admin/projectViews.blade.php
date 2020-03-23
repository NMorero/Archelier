@extends('layouts.adminBase')



@section('content')
    <main class="container p-4">


        <div class="col-12 row">

                @if (auth()->user()->roles->rol == 'admin' || auth()->user()->roles->rol == 'PRmanager' || auth()->user()->roles->rol == 'PRleader')
                <div class="col-12 justify-content-center row mb-4">
                    <button type="button" class="btn btn-primary col-4" data-toggle="modal" data-target="#view">
                        Add
                      </button>
                </div>
                @endif

                  <!-- Modal -->
                  <div class="modal fade" id="view" tabindex="-1" role="dialog" aria-labelledby="viewTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-scrollable" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title" id="viewTitle">New View</h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <div class="modal-body">
                            <form autocomplete="off" action="/Admin/Projects/addView/{{$id}}" id="developerForm" method="post" enctype="multipart/form-data">
                                @csrf

                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" name="image" id="image">
                                    <label class="custom-file-label" for="image">Choose file</label>
                                  </div>
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                    <button type="submit" class="btn btn-primary">Add</button>
                            </form>
                        </div>

                      </div>
                    </div>
                  </div>

            </div>
        </div>
    </div>
</div>
</div>


        <div class="col-12 justify-content-between d-flex row">
            @foreach ($views as $view)
                <div class="col-3 row">
                        <img class="col-11" src="{{$view->image}}" alt="img" >
                        @if (auth()->user()->roles->rol == 'admin' || auth()->user()->roles->rol == 'PRmanager' || auth()->user()->roles->rol == 'PRleader')
                        <a href="/Admin/Project/Views/Delete/{{$view->id}}" class="btn btn-danger col-11">Delete</a>
                        @endif
                </div>
            @endforeach
        </div>

    </main>
@endsection
