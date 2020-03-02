@extends('layouts.adminBase')


@section('content')
    <main class="  p-3 d-flex">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">User</th>
                <th scope="col">Person</th>
                <th scope="col">Delete</th>
            </tr>
            </thead>
            <tbody>
        @foreach ($PRManagers as $manager)


                <tr>
                    <th scope="row">{{$manager->id}}</th>
                    <td>{{$manager->user->username}}</td>
                    <td data-toggle="collapse" data-target="#accordion{{$manager->id}}" class="clickable">Info</td>
                    <td class="btn btn-primary py-1 px-2 mt-1 ml-4"><a href="/Admin/Projects/Managers/Delete/{{$manager->id}}" class="text-white">X</a></td>
                </tr>

                <tr id="accordion{{$manager->id}}" class="collapse">
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
                                <td>{{$manager['person']['id']}}</td>
                                <td>{{$manager['person']['name']}}</td>
                                <td>{{$manager['person']['last_name']}}</td>
                                <td>{{$manager['person']['dni']}}</td>
                                <td>{{$manager['person']['alias']}}</td>
                                <td>{{$manager['person']['email']}}</td>
                                <td>{{$manager['person']['phone_number']}}</td>
                                <td>{{$manager['person']['address']}}</td>
                                <td>{{$manager['person']['identification_code']}}</td>

                            </tbody>
                        </table>
                    </td>
                </tr>


        @endforeach

            </tbody>
        </table>
    </main>
@endsection
