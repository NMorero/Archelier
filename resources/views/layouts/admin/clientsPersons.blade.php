@extends('layouts.adminBase')

@section('content')
<main class="container">
    <table class="table table-hover">
        <thead>
          <tr>
            <th>#</th>
            <th>Name</th>
            <th>Type</th>
            <th>Person</th>

          </tr>
        </thead>

        <tbody>

            @foreach ($clients as $client)

            <tr >
                <td>{{$client->id}}</td>
                <td>{{$client->client_name}}</td>
                <td>{{$client->type}}</td>
                <td data-toggle="collapse" data-target="#accordion{{$client->id}}" class="clickable">Info</td>

                </tr>
                <tr id="accordion{{$client->id}}" class="collapse">
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
                                <td>{{$client->person->id}}</td>
                                <td>{{$client->person->name}}</td>
                                <td>{{$client->person->last_name}}</td>
                                <td>{{$client->person->dni}}</td>
                                <td>{{$client->person->alias}}</td>
                                <td>{{$client->person->email}}</td>
                                <td>{{$client->person->phone_number}}</td>
                                <td>{{$client->person->address}}</td>
                                <td>{{$client->person->identification_code}}</td>

                            </tbody>
                        </table>
                    </td>
                </tr>

            @endforeach
        </tbody>
        </table>
</main>
@endsection

@section('scripts')
<script src="{{asset('js/adminFunctions.js')}}"></script>

@endsection
