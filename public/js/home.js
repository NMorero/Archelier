
getPosts();
getReminders();
getTasks();




$('#clientSelect').change(function(){
    console.log('si');
    var clientoption = document.getElementById('clientSelect').value;
    console.log('value client: ' + clientoption);
    getPosts()
    if(clientoption != 'All'){



        fetch('getProjectsByClient/'+clientoption)
        .then(function(response){
            return response.json();
        })
        .then(function(data){
            console.log(data);
            document.getElementById('projectSelect').disabled = false;
            var selectProjects = document.getElementById('projectSelect');
            selectProjects.innerHTML = `<option selected onclick="projectSelect()" value="All">All</option>`;
            data.map(function (project) {
                const templateLiteral = `
                <option value="${project.id}" > ${project.project_name} </option>
                `;


            selectProjects.innerHTML = selectProjects.innerHTML.concat(templateLiteral);

            });
        })
        .catch(function(error){
            console.log(error);
        })


    }else{
        var selectProject = document.getElementById('projectSelect');
        selectProject.innerHTML = `<option selected  value="All">All</option>`
        var selectView = document.getElementById('viewSelect');
        selectView.innerHTML = `<option selected  value="All">All</option>`;
        document.getElementById('projectSelect').value='All';
        document.getElementById('projectSelect').disabled = true;
        document.getElementById('viewSelect').value='All';
        document.getElementById('viewSelect').disabled = true;

    }
});

$('#projectSelect').change(function(){
    var projectOption = document.getElementById('projectSelect').value;
    console.log('value project: ' + projectOption);
    getPosts()
    if(document.getElementById('projectSelect').value != 'All'){


        fetch('getViewsByProject/'+projectOption)
        .then(function(response){
            return response.json();
        })
        .then(function(data){
            console.log(data);
            document.getElementById('viewSelect').disabled = false;
            var selectView = document.getElementById('viewSelect');
            selectView.innerHTML = '';
            selectView.innerHTML = `<option selected onclick="viewSelect()" value="All">All</option>`;
            data.map(function (view) {
                const templateLiteral = `
                <option value="${view.id}" onclick="viewSelect()"> ${view.id} </option>
                `;


            selectView.innerHTML = selectView.innerHTML.concat(templateLiteral);

            });
        })
        .catch(function(error){
            console.log(error);
        })




    }else{
        var selectView = document.getElementById('viewSelect');
        selectView.innerHTML = `<option selected onclick="viewSelect()" value="All">All</option>`;
        document.getElementById('viewSelect').value='All';
        document.getElementById('viewSelect').disabled = true;

    }
});

$('#viewSelect').change(function(){
    var viewOption = document.getElementById('viewSelect').value;
    console.log('value view: ' + viewOption);
    getPosts()
});


function getPosts(){
    var client = document.getElementById('clientSelect').value;
    var project = document.getElementById('projectSelect').value;
    var view = document.getElementById('viewSelect').value;
    var route = '/getPosts/'+client+'/'+project+'/'+view;
    console.log(route);
    fetch(route)
        .then(function(response){
            return response.json();
        })
        .then(function(data){
            console.log(data);

            var divPosts = document.getElementById('divPosts');
            divPosts.innerHTML = '';
            data.map(function (post) {
                if(post.image != null){
                    const templateLiteral = `
                <div class="row p-2 border-bottom mb-2">
                <p class=" col-12 postInfo">Posted by: ${post.user_name} on ${post.date} </p>
                <span class="postTitle mb-2 col-12">${post.title}</span>
                <span class="postMessage mb-2 col-12">${post.message}</span>
                <img src="${post.image}" class="postImage" alt="">
                <p class="postFooter">Project: ${post.project_name}   Client: ${post.client_id} View: ${post.view_id}</p>

            </div>
                `;
                divPosts.innerHTML = divPosts.innerHTML.concat(templateLiteral);

                }else{
                    const templateLiteral = `
                <div class="row p-2 border-bottom mb-2">
                <p class=" col-12 postInfo">Posted by: ${post.user_name} on ${post.date} </p>
                <span class="postTitle mb-2 col-12">${post.title}</span>
                <span class="postMessage mb-2 col-12">${post.message}</span>
                <p class="postFooter">Project: ${post.project_name}   Client: ${post.client_id} </p>

            </div>
                `;
                divPosts.innerHTML = divPosts.innerHTML.concat(templateLiteral);
                }




            });
        })
        .catch(function(error){
            console.log(error);
        })
}

function getReminders(){
    fetch('/getReminders')
        .then(function(response){
            return response.json();
        })
        .then(function(data){
            console.log(data);

            var remindersBox = document.getElementById('remindersBox');
            remindersBox.innerHTML = '';

            data.map(function (reminder) {
                const templateLiteral = `
                <li class="list-group-item justify-content-around d-flex row reminder-li p-2 bg-dark"><p class="col-8">${reminder.message}</p>     <button class="p-0 btn button-reminder col-1 btn-danger" onclick="deleteReminder(${reminder.id})">x</button> </li>
                `;


            remindersBox.innerHTML = remindersBox.innerHTML.concat(templateLiteral);

            });
        })
        .catch(function(error){
            console.log(error);
        })
}

function deleteReminder(id){
    Swal.fire({
        title: 'Delete reminder?',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
      }).then((result) => {
        if (result.value) {
            var route = '/deleteReminder/'+id;
            console.log(route);
            fetch(route)
            .then(function(response){
                return response.json();
            })
            .then(function(data){
                console.log(data);
                getReminders();
            })
            .catch(function(error){
                console.log(error);
            })

            Swal.fire(
            'Deleted!',
            'Your reminder has been deleted.',
            //'success'
          )

        }
      })
}

function getTasks(){

    fetch('/getTasks')
            .then(function(response){
                return response.json();
            })
            .then(function(data){
                data = Object.values(data)
                console.log(data);
                var i = 0;
                var tasksBox = document.getElementById('tasksBox');
                tasksBox.innerHTML = '';
                data.map(function (tasks) {
                    i++;

                    const templateLiteral = `
                        <thead class="thead today" id="taskDay${i}">
                            <tr class="table-secondary">
                                <th scope"col"></th>
                                <th scope="col">${tasks.day}</th>
                            </tr>
                        </thead>
                    `;
                    tasksBox.innerHTML = tasksBox.innerHTML.concat(templateLiteral);

                    tasks.projects.map(function (task) {

                        if(task.status == 'ongoing'){
                            var color = 'warning';
                        }else if(task.status == 'done'){
                            var color = 'success';
                        }else{
                            var color = 'info';
                        }




                        const templateLiteral = `
                        <tbody>
                            <tr class="clickable table-${color}" data-toggle="collapse" data-target="#group-of-rows-${task.id}" aria-expanded="false" aria-controls="group-of-rows-${task.id}">
                                <td>•</td>
                                <td>${task.user.username}</td>

                            </tr>
                        </tbody>
                        <tbody id="group-of-rows-${task.id}" class="collapse">
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
                        `;
                    tasksBox.innerHTML = tasksBox.innerHTML.concat(templateLiteral);

                    });




                });
            })
            .catch(function(error){
                console.log(error);
            })
}
