@extends('layouts.adminBase')


@section('content')
    <main class="  p-3 d-flex">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">User</th>
                <th scope="col">Person</th>

            </tr>
            </thead>
            <tbody>
        @foreach ($PRLeaders as $leader)


                <tr>
                    <th scope="row">{{$leader->id}}</th>
                    <td>{{$leader->user->username}}</td>
                    <td data-toggle="collapse" data-target="#accordion{{$leader->id}}" class="clickable">Info</td>

                </tr>

                <tr id="accordion{{$leader->id}}" class="collapse">
                    <td colspan="3">
                        <table>
                            <thead>
                                <th>Id</th>
                                <th>Nombre</th>
                                <th>Last Name</th>
                                <th>Dni</th>
                                <th>Alias</th>
                                <th>Email</th>
                                <th>Phone Number</th>
                                <th>Address</th>
                                <th>Identification Code</th>

                            </thead>
                            <tbody>
                                <td>{{$leader['person']['id']}}</td>
                                <td>{{$leader['person']['name']}}</td>
                                <td>{{$leader['person']['last_name']}}</td>
                                <td>{{$leader['person']['dni']}}</td>
                                <td>{{$leader['person']['alias']}}</td>
                                <td>{{$leader['person']['email']}}</td>
                                <td>{{$leader['person']['phone_number']}}</td>
                                <td>{{$leader['person']['address']}}</td>
                                <td>{{$leader['person']['identification_code']}}</td>

                            </tbody>
                        </table>
                    </td>
                </tr>


        @endforeach

            </tbody>
        </table>
    </main>
@endsection
