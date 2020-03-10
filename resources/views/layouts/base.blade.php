<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href=" {{asset('/css/master.css')}} ">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Muli:400,500&display=swap" rel="stylesheet">
    @section('head')

    @show
    <title>Archelier | @section('title') @show</title>
</head>
<body @section('body')

@show>

    <header class="header-base p-2 px-5 mt-2 justify-content-between row d-none d-lg-block" style="height:50px">
        <nav class="col-12 row justify-content-between">
            <div class="col-4 row">
                <a class="col-3 buttons-header text-center text-center text-decoration-none shadow" href="/">Home</a>
                <a class="col-3 buttons-header mx-1 text-center text-decoration-none shadow" href="/Admin/Projects" tabindex="-1" aria-disabled="true">Projects</a>

                @if (auth()->user()->roles->rol == 'admin')
                <a class="col-3 buttons-header text-center text-decoration-none shadow" href="/Admin" tabindex="-1" aria-disabled="true">Resources</a>
                @endif
            </div>
            <div class="col-3 row justify-content-around">
                <button class="col-lg-4 col-md-6 buttons-header text-center text-center text-decoration-none shadow" data-toggle="modal" data-target="#modalDelivery">Delivery</button>
            <a href="/Feedback/Create" class="col-lg-4 col-md-6 buttons-header text-center text-center text-decoration-none shadow px-2">Feedback</a>
            </div>
          </nav>

    </header>


    @section('content')

    @show




    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://kit.fontawesome.com/1c8538c20e.js" crossorigin="anonymous"></script>
    @section('scripts')

    @show
</body>
</html>
