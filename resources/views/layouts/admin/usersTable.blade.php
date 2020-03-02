@extends('layouts.adminBase')


@section('content')
    <main class="  p-3 d-flex">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Username</th>
                <th scope="col">Email</th>
                <th scope="col">Password</th>
                <th scope="col">Person</th>
                <th scope="col">Rol</th>
                <th scope="col">Delete</th>

            </tr>
            </thead>
            <tbody>
        @foreach ($users as $user)


                <tr>
                    <th scope="row">{{$user->id}}</th>
                    <td>{{$user->username}}</td>
                    <td>{{$user->email}}</td>
                    <td>{{$user->password}}</td>

                    <td data-toggle="collapse" data-target="#accordion{{$user->id}}" class="clickable">Info</td>
                    <td>{{$user['rol']['rol']}}</td>
                    <td class="btn btn-primary py-1 px-2 mt-1 ml-4"><a href="/Admin/Users/Delete/{{$user->id}}" class="text-white">X</a></td>
                </tr>

                <tr id="accordion{{$user->id}}" class="collapse">
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
                                <td>{{$user['person']['id']}}</td>
                                <td>{{$user['person']['name']}}</td>
                                <td>{{$user['person']['last_name']}}</td>
                                <td>{{$user['person']['dni']}}</td>
                                <td>{{$user['person']['alias']}}</td>
                                <td>{{$user['person']['email']}}</td>
                                <td>{{$user['person']['phone_number']}}</td>
                                <td>{{$user['person']['address']}}</td>
                                <td>{{$user['person']['identification_code']}}</td>

                            </tbody>
                        </table>
                    </td>
                </tr>


        @endforeach

            </tbody>
        </table>
    </main>
@endsection
