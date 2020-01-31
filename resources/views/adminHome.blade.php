@extends('layouts.adminBase')

@section('content')
    <main class="container d-flex">
        <div class="col-xl-4 col-lg-4">
            <div class="card" style="margin-top:10px">
                    <div class="card-header">
                    <h5 class="card-title">Clients</h5>
                </div>
                <div class="card" style="margin:8px">
                    <div class="card-body">
                        <div >
                            <h5 class="card-title">Person</h5>
                            <p class="card-text">The person who represent a Client Company.</p>
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalScrollable">
                                Add
                              </button>

                              <!-- Modal -->
                              <div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-scrollable" role="document">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <h5 class="modal-title" id="exampleModalScrollableTitle">New Person CLient</h5>
                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                      </button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="/Admin/addClientsPersons" id="clientPersonForm" method="post">
                                            @csrf
                                            <div class="form-group">
                                                <label for="name">Name</label>
                                                <input type="text" name="name" class="form-control" id="name" aria-describedby="name">

                                              </div>
                                              <div class="form-group">
                                                <label for="person">Person</label>
                                                <select class="custom-select" name="person" id="">
                                                    <option value="none">Select..</option>
                                                    @foreach ($persons as $person)
                                                        <option value="{{$person->id}}">{{$person->name}}</option>
                                                    @endforeach
                                                </select>
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
                            <a href="/Admin/Clients/Person" class="btn btn-secondary text-decoration-none text-white">View</a>
                        </div>
                    </div>
                </div>
                <div class="card" style="margin:8px">
                    <div class="card-body">
                        <div >
                            <h5 class="card-title">Company</h5>
                            <p class="card-text">Create or edit clients as company.</p>
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ClientCompanyModal">
                                Add
                              </button>

                              <!-- Modal -->
                              <div class="modal fade" id="ClientCompanyModal" tabindex="-1" role="dialog" aria-labelledby="ClientCompanyModalTitle" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-scrollable" role="document">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <h5 class="modal-title" id="ClientCompanyModalTitle">New Company Client</h5>
                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                      </button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="/Admin/addClientsCompany" id="clientCompanyForm" method="post">
                                            @csrf
                                            <div class="form-group">
                                                <label for="name">Name</label>
                                                <input type="text" name="name" class="form-control" id="name" aria-describedby="name">

                                              </div>
                                              <div class="form-group">
                                                <label for="company">Company</label>
                                                <select class="custom-select" name="company" id="company">
                                                    <option value="none">Select..</option>
                                                    @foreach ($companies as $company)
                                                        <option value="{{$company->id}}">{{$company->name}}</option>
                                                    @endforeach
                                                </select>
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
                            <a href="/Admin/Clients/Company" class="btn btn-secondary text-decoration-none text-white">View</a>
                            </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-4 col-lg-4">
            <div class="card" style="margin-top:10px">
                <div class="card-header">
                    <h5 class="card-title">Developers</h5>
                </div>
                <div class="card" style="margin:8px">
                    <div class="card-body">
                        <a href="#" class="text-decoration-none text-dark">
                            <h5 class="card-title">Person</h5>
                            <p class="card-text">Could be a direct develop, a freelance or a person who represent a Dev Company.</p>
                        </a>
                        </div>
                </div>
                <div class="card" style="margin:8px">
                    <div class="card-body">
                        <h5 class="card-title">Company</h5>
                        <p class="card-text">Create or edit developers as company, such as a provider.</p>
                    </div>
                </div>
            </div>
        </div>


        <div class="col-xl-4 col-lg-4">
            <div class="card" style="margin-top:10px">
                <div class="card-header">
                    <h5 class="card-title">Managers</h5>
                </div>
                <div class="card" style="margin:8px">
                    <div class="card-body">
                        <a href="#" class="text-decoration-none text-dark">
                            <h5 class="card-title">PR Manager</h5>
                            <p class="card-text">The Project Manager lead Project leaders .</p>
                        </a>
                    </div>
                </div>
                <div class="card" style="margin:8px">
                    <div class="card-body">
                        <a href="#" class="text-decoration-none text-dark"><h5 class="card-title">PR Leader</h5>
                            <p class="card-text">The Project Leader lead Developers .</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </main>
@endsection

@section('scripts')
    <script src="{{asset('js/adminFunctions.js')}}"></script>
@endsection
