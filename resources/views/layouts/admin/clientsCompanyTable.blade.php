@extends('layouts.adminBase')

@section('content')
<main class="container-fluid row pl-5">
    <table class="table table-hover">
        <thead>
          <tr>
            <th>#</th>
            <th>Name</th>
            <th>Type</th>
            <th>Company</th>

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
                                <th>Name</th>
                                <th>Cuit</th>
                                <th>Alias</th>
                                <th>Website</th>
                                <th>Administrator Name</th>
                                <th>Administrator Email</th>
                                <th>Production Manager</th>
                                <th>Production Email</th>
                                <th>Phone Number</th>
                                <th>Identification Code</th>

                            </thead>
                            <tbody>
                                <td>{{$client->company->id}}</td>
                                <td>{{$client->company->name}}</td>
                                <td>{{$client->company->cuit}}</td>
                                <td>{{$client->company->alias}}</td>
                                <td>{{$client->company->website}}</td>
                                <td>{{$client->company->administrator_name}}</td>
                                <td>{{$client->company->administrator_email}}</td>
                                <td>{{$client->company->production_manager_name}}</td>
                                <td>{{$client->company->production_email}}</td>
                                <td>{{$client->company->phone_number}}</td>
                                <td>{{$client->company->identification_code}}</td>

                            </tbody>
                        </table>
                    </td>
                </tr>

            @endforeach
        </tbody>
        </table>
</main>
@endsection
