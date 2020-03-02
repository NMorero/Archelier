@extends('layouts.adminBase')


@section('content')
    <main class="container">
        <main class="  p-3 d-flex">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Last name</th>
                    <th scope="col">DNI</th>
                    <th scope="col">Alias</th>
                    <th scope="col">Email</th>
                    <th scope="col">Phone number</th>
                    <th scope="col">Address</th>
                    <th scope="col">Identification code</th>
                    <th scope="col">Country</th>
                    <th scope="col">State</th>
                    <th scope="col">City</th>
                </tr>
                </thead>
                <tbody>
                    @foreach ($persons as $person)

                    <tr>
                        <th scope="row">{{$person->id}}</th>
                        <td>{{$person->name}}</td>
                        <td>{{$person->last_name}}</td>
                        <td>{{$person->dni}}</td>
                        <td>{{$person->alias}}</td>
                        <td>{{$person->email}}</td>
                        <td>{{$person->phone_number}}</td>
                        <td>{{$person->address}}</td>
                        <td>{{$person->identification_code}}</td>
                        <td>{{$person->country->country_name}}</td>
                        <td>{{$person->state->state_name}}</td>
                        <td>{{$person->city->city_name}}</td>


                    </tr>

                    @endforeach

                </tbody>
            </table>
        </main>
    </main>
@endsection
