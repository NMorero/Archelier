@extends('layouts.adminBase')


@section('content')
    <main class="p-2">
        <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">User </th>
                <th scope="col">Person</th>


              </tr>
            </thead>
            <tbody>

                @foreach ($developers as $developer)

                <tr >
                    <td>{{$developer->id}}</td>
                    <td>{{$developer->username}}</td>

                    <td data-toggle="collapse" data-target="#accordion{{$developer->id}}" class="clickable">Info</td>

                    </tr>
                    <tr id="accordion{{$developer->id}}" class="collapse">
                        <td colspan="3">
                            <table>
                                <thead>
                                    <th>Id</th>
                                    <th>Nombre</th>
                                    <th>Last Name</th>
                                </thead>
                                <tbody>
                                    <td>{{$developer['person']['id']}}</td>
                                    <td>{{$developer['person']['name']}}</td>
                                    <td>{{$developer['person']['last_name']}}</td>

                                </tbody>
                            </table>
                        </td>
                    </tr>

                @endforeach
            </tbody>
          </table>
    </main>
@endsection
