$("#postBtnForm").on("submit", function(e){
    e.preventDefault();
    console.log('si')
    var f = $(this);
    var formData = new FormData(document.getElementById("postBtnForm"));
    formData.append("dato", "valor");
    //formData.append(f.attr("name"), $(this)[0].files[0]);
    $.ajax({
        url: "/addPost",
        type: "post",
        dataType: "html",
        data: formData,
        cache: false,
        contentType: false,
 processData: false
    })
        .done(function(res){
            console.log(res);
        });
});






















var users = '';


getUsers();

userSelect = document.getElementById('TaskBtnUserSelect');
users.map(function (user) {
    const templateLiteral = `
    <option value="${user.id}">${user.username}</option>
    `;


    userSelect.innerHTML = userSelect.innerHTML.concat(templateLiteral);

});



function getUsers(){
    $.ajax({
        url: '/getUsers',
		type: 'get',
        async   : false,
        success : function(data) {

            users = Object.values(data);
        }
    });

}

function getProjectsByClient(button, client){
    $.ajax({
        url: '/getProjectsByClient/'+client,
		type: 'get',
        async   : false,
        success : function(data) {

            projects = Object.values(data);
            var projectSelect = document.getElementById(button+'BtnProjectSelect');
            projectSelect.innerHTML = '';
            projects.map(function (project) {
                const templateLiteral = `
                <option value="${project.id}" onclick="getViewsByProject('${button}', ${project.id})">${project.project_name}</option>
                `;


                projectSelect.innerHTML = projectSelect.innerHTML.concat(templateLiteral);

            });
        }
    });

}

function getViewsByProject(button, project){
    $.ajax({
        url: '/getViewsByProject/'+project,
		type: 'get',
        async   : false,
        success : function(data) {

            views = Object.values(data);
            var ViewSelect = document.getElementById(button+'BtnViewSelect');
            ViewSelect.innerHTML = '';
            views.map(function (view) {
                const templateLiteral = `
                <option value="${view.id}">${view.id}</option>
                `;


                ViewSelect.innerHTML = ViewSelect.innerHTML.concat(templateLiteral);

            });
        }
    });
}




function saveButton(button){
    console.log('si');
    let formData =  {
            "status": null,
            "user": null,
            "client": null,
            "project": null,
            "view": null,
            "message": null,
            "end_date": null,
            "template":null,
            "developer": null,
            "title": null,
            "file": null,
};
    if(document.getElementById(button+'BtnStatusSelect')){
        var status = document.getElementById(button+'BtnStatusSelect').value;
        formData['status'] = status;
        // console.log('Status: '+status);
    }
    if(document.getElementById(button+'BtnUserSelect')){
        var user = document.getElementById(button+'BtnUserSelect').value
        formData['user'] = user;
        //console.log('User: ' + user);
    }

    if(document.getElementById(button+'BtnClientSelect')){
        var client = document.getElementById(button+'BtnClientSelect').value
        formData['client'] = client;
        //console.log('Client: ' + client);
    }

    if(document.getElementById(button+'BtnProjectSelect')){
        var project = document.getElementById(button+'BtnProjectSelect').value
        formData['project'] = project;
        //console.log('Project: ' + project);
    }

    if(document.getElementById(button+'BtnViewSelect')){
        var view = document.getElementById(button+'BtnViewSelect').value
        formData['view'] = view;
        //console.log('View: ' + view);
    }

    if(document.getElementById(button+'BtnMessage')){
        var message = document.getElementById(button+'BtnMessage').value
        formData['message'] = message;
        //console.log('Message: ' + message);
    }

    if(document.getElementById(button+'BtnEndDate')){
        var endDate = document.getElementById(button+'BtnEndDate').value
        formData['end_date'] = endDate;
        //console.log('End date: ' + endDate);
    }

    if(document.getElementById(button+'BtnTemplate')){
        var template = document.getElementById(button+'BtnTemplate').value
        formData['template'] = template;
        //console.log('Template: ' + template);
    }

    if(document.getElementById(button+'BtnDeveloperSelect')){
        var developer = document.getElementById(button+'BtnDeveloperSelect').value
        formData['developer'] = developer;
        //console.log('Developer: ' + developer);
    }

    if(document.getElementById(button+'BtnTitle')){
        var title = document.getElementById(button+'BtnTitle').value
        formData['title'] = title;
        //console.log('Title: ' + title);
    }

    if(document.getElementById(button+'BtnFile')){
        var file = document.getElementById(button+'BtnFile').value
        formData['file'] = file;
        //console.log('File: ' + file);
    }
    formData = JSON.stringify(formData);
    console.log(formData);

    let route = '/add'+button+'/'+ formData;
    console.log(route);
    fetch(route)
            .then(function(response){
                return response.json();
            })
            .then(function(data){
                console.log(data.status);
                getPosts();
                getReminders();
                getTasks();


                $("#close"+button).click()
            })
            .catch(function(error){
                console.log(error);
            })

}
