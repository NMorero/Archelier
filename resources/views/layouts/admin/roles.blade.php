@extends('layouts.adminBase')


@section('content')
    <main class="  p-3 d-flex">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>


            </tr>
            </thead>
            <tbody>
        @foreach ($roles as $rol)


                <tr>
                    <th scope="row">{{$rol->id}}</th>
                    <td>{{$rol->rol}}</td>

                </tr>



        @endforeach

            </tbody>
        </table>
    </main>
@endsection
