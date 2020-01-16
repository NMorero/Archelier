
var users = '';


getUsers();

userSelect = document.getElementById('taskBtnUserSelect');
users.map(function (user) {
    const templateLiteral = `
    <option value="1">${user.username}</option>
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




function taskBtnSave(){
    var status = document.getElementById('taskBtnStatusSelect').value;
    console.log(status);
}
