@extends('layouts.adminBase')

@section('content')
    <main class="p-2">
        <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Name </th>
                <th scope="col">Cuit</th>
                <th scope="col">Alias</th>
                <th scope="col">Website</th>
                <th scope="col">Administrator name</th>
                <th scope="col">Administrator email</th>
                <th scope="col">Production manager name</th>
                <th scope="col">Production email</th>
                <th scope="col">Phone number</th>
                <th scope="col">Address</th>
                <th scope="col">Postal code</th>
                <th scope="col">Identification code</th>
                <th scope="col">Delete</th>

              </tr>
            </thead>
            <tbody>
              @foreach ($companies as $company)
                <tr>
                  <th scope="row">{{$company->id}}</th>
                  <td>{{$company->name}}</td>
                  <td>{{$company->cuit}}</td>
                  <td>{{$company->alias}}</td>
                  <td>{{$company->website}}</td>
                  <td>{{$company->administrator_name}}</td>
                  <td>{{$company->administrator_email}}</td>
                  <td>{{$company->production_manager_name}}</td>
                  <td>{{$company->production_email}}</td>
                  <td>{{$company->phone_number}}</td>
                  <td>{{$company->address}}</td>
                  <td>{{$company->postal_code}}</td>
                  <td>{{$company->identification_code}}</td>
                  <td class="btn btn-primary py-1 px-2 mt-1 ml-4"><a href="/Admin/Companies/Delete/{{$company->id}}" class="text-white">X</a></td>


                </tr>
              @endforeach

            </tbody>
          </table>
    </main>
@endsection
