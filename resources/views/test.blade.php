<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="{{asset('css/master.css')}}">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

    <title>Hello, world!</title>
  </head>
  <body>

    <main>

      <select class="custom-select" name="slected" id='SelectedView' onchange="changeView()">
          <option value="1">Posts</option>
          <option value="2">Reminders</option>
          <option value="3">Tasks</option>
      </select>

      <div class="scroll-post scrollable" id="divPosts" >
        <div class="row p-2 border-bottom mb-2">
          <p class=" col-12 postInfo">Posted by: USER on DATE </p>
          <span class="postTitle mb-2 col-12">TITLE</span>
          <span class="postMessage mb-2 col-12">MESSAGE</span>
          <p class="postFooter">Project: PROJECT Client: CLIENT </p>

        </div>
        <div class="row p-2 border-bottom mb-2">
          <p class=" col-12 postInfo">Posted by: USER on DATE </p>
          <span class="postTitle mb-2 col-12">TITLE</span>
          <span class="postMessage mb-2 col-12">MESSAGE</span>
          <p class="postFooter">Project: PROJECT Client: CLIENT </p>

        </div>
        <div class="row p-2 border-bottom mb-2">
          <p class=" col-12 postInfo">Posted by: USER on DATE </p>
          <span class="postTitle mb-2 col-12">TITLE</span>
          <span class="postMessage mb-2 col-12">MESSAGE</span>
          <p class="postFooter">Project: PROJECT Client: CLIENT </p>

        </div>
        <div class="row p-2 border-bottom mb-2">
          <p class=" col-12 postInfo">Posted by: USER on DATE </p>
          <span class="postTitle mb-2 col-12">TITLE</span>
          <span class="postMessage mb-2 col-12">MESSAGE</span>
          <p class="postFooter">Project: PROJECT Client: CLIENT </p>

        </div>
        <div class="row p-2 border-bottom mb-2">
          <p class=" col-12 postInfo">Posted by: USER on DATE </p>
          <span class="postTitle mb-2 col-12">TITLE</span>
          <span class="postMessage mb-2 col-12">MESSAGE</span>
          <p class="postFooter">Project: PROJECT Client: CLIENT </p>

        </div>
        <div class="row p-2 border-bottom mb-2">
          <p class=" col-12 postInfo">Posted by: USER on DATE </p>
          <span class="postTitle mb-2 col-12">TITLE</span>
          <span class="postMessage mb-2 col-12">MESSAGE</span>
          <p class="postFooter">Project: PROJECT Client: CLIENT </p>

        </div>
        <div class="row p-2 border-bottom mb-2">
          <p class=" col-12 postInfo">Posted by: USER on DATE </p>
          <span class="postTitle mb-2 col-12">TITLE</span>
          <span class="postMessage mb-2 col-12">MESSAGE</span>
          <p class="postFooter">Project: PROJECT Client: CLIENT </p>

        </div>
      </div>

      <div id="remindersBoxDiv">
          <h3 class=" justify-content-between row mb-2"><p class="col-5">Reminders</p></h3>

          <ul class="list-group scroll-reminders text-white p-0 bg-dark rounded" id="remindersBox">
            <li class="list-group-item justify-content-around d-flex row reminder-li p-2 bg-dark"><p class="col-8">Message 1</p>     <button class="p-0 btn button-reminder col-1 btn-danger" onclick="deleteReminder(${reminder.id})">x</button> </li>
            <li class="list-group-item justify-content-around d-flex row reminder-li p-2 bg-dark"><p class="col-8">Message 2</p>     <button class="p-0 btn button-reminder col-1 btn-danger" onclick="deleteReminder(${reminder.id})">x</button> </li>
            <li class="list-group-item justify-content-around d-flex row reminder-li p-2 bg-dark"><p class="col-8">Message 3</p>     <button class="p-0 btn button-reminder col-1 btn-danger" onclick="deleteReminder(${reminder.id})">x</button> </li>
          </ul>
      </div>

      <div class="scrollable p-0" id="tasksBoxDiv">
          <table class="table table-sm p1 " id="tasksBox">
            <thead class="thead today" id="taskDay${i}">
                <tr class="table-secondary">
                    <th scope"col"></th>
                    <th scope="col">${tasks.day}</th>
                </tr>
            </thead>
            <tbody>
                <tr class="clickable table-succes" data-toggle="collapse" data-target="#group-of-rows-1" aria-expanded="false" aria-controls="group-of-rows-1">
                    <td>•</td>
                    <td>Username</td>

                </tr>
            </tbody>
            <tbody id="group-of-rows-1" class="collapse">
                <tr>
                    <td>Message:</td>
                    <td>${task.message}</td>
                </tr>
                <tr>
                    <td>Project:</td>
                    <td>${task.project.project_name}</td>
                </tr>
                <tr>
                    <td>Client:</td>
                    <td>${task.client.person.name}</td>

                </tr>
        </tbody>
          </table>
      </div>
    </main>



    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script type="text/javascript">
          function changeView(){
            let valorSelect = document.getElementById('SelectedView').value;
            if (valorSelect == 1){
              console.log('posts');
              document.getElementById('divPosts').style.display = 'block';
              document.getElementById('remindersBoxDiv').style.display = 'none';
              document.getElementById('tasksBoxDiv').style.display = 'none';
            }

            if (valorSelect == 2){
              console.log('reminders');
              document.getElementById('remindersBoxDiv').style.display = 'block';
              document.getElementById('divPosts').style.display = 'none';
              document.getElementById('tasksBoxDiv').style.display = 'none';
            }

            if (valorSelect == 3){
              console.log('tasks');
              document.getElementById('tasksBoxDiv').style.display = 'block';
              document.getElementById('remindersBoxDiv').style.display = 'none';
              document.getElementById('divPosts').style.display = 'none';

            }


          }
    </script>
  </body>
</html>
