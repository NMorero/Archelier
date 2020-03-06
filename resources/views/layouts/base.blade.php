<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href=" {{asset('/css/master.css')}} ">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    @section('head')

    @show
    <title>Archelier | @section('title') @show</title>
</head>
<body>

    <header class="header-base p-2 justify-content-between row d-none d-lg-flex" style="height:70px">
        <nav class="nav col-8">
            <a class="nav-link active   text-white" href="/">Home</a>
            <a class="nav-link active   text-white" href="/Admin/Projects" tabindex="-1" aria-disabled="true">Projects</a>
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Administration</a>
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Production</a>
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Marketing</a>
            @if (auth()->user()->roles->rol == 'admin')
            <a class="nav-link active   text-white" href="/Admin" tabindex="-1" aria-disabled="true">Resources</a>
            @endif

          </nav>
        <nav class="nav col-3 row justify-content-center d-flex align-center">
            <div class="row col-5">
                <img class="col-5 rounded-circle mt-2" src="{{asset('/upload/users/user.jfif')}}" alt="" height="33">
                <p class="col-5 p-2 text-white">{{auth()->user()->username}}</p>
            </div>
            <a class="col-5 p-2 text-white" href="/logout">Log Out</a>
        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
            @csrf
        </form>

        </nav>
    </header>


    @section('content')

    @show




    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    @section('scripts')

    @show
</body>
</html>
