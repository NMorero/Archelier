$("#postBtnForm").on("submit", function(e) {
    e.preventDefault();
    console.log("si");
    var f = $(this);
    var formData = new FormData(document.getElementById("postBtnForm"));
    console.log("data:" + formData);
    //formData.append(f.attr("name"), $(this)[0].files[0]);
    $.ajax({
        url: "/addPost",
        type: "post",
        dataType: "html",
        data: formData,
        cache: false,
        contentType: false,

        processData: false
    }).done(function(res) {
        console.log(res);
        document.getElementById("postBtnForm").reset();
        getPosts();
        $("#closePostBtn").click();
    });
});

var users = "";

getUsers();

userSelect = document.getElementById("TaskBtnUserSelect");
users.map(function(user) {
    const templateLiteral = `
    <option value="${user.id}">${user.username}</option>
    `;

    userSelect.innerHTML = userSelect.innerHTML.concat(templateLiteral);
});

function getUsers() {
    $.ajax({
        url: "/getUsers",
        type: "get",
        async: false,
        success: function(data) {
            users = Object.values(data);
        }
    });
}

function getProjectsByClient(button) {
    let client = document.getElementById(button + "BtnClientSelect").value;
    $.ajax({
        url: "/getProjectsByClient/" + client,
        type: "get",
        async: false,
        success: function(data) {
            projects = Object.values(data);
            var projectSelect = document.getElementById(
                button + "BtnProjectSelect"
            );
            projectSelect.innerHTML = `
            <option value="">Select..</option>
            `;
            projects.map(function(project) {
                const templateLiteral = `
                <option value="${project.id}">${project.project_name}</option>
                `;

                projectSelect.innerHTML = projectSelect.innerHTML.concat(
                    templateLiteral
                );
            });
        }
    });
}

function getViewsByProject(button) {
    let project = document.getElementById(button + "BtnProjectSelect").value;

    if (document.getElementById(button + "BtnViewSelect")) {
        $.ajax({
            url: "/getViewsByProject/" + project,
            type: "get",
            async: false,
            success: function(data) {
                views = Object.values(data);
                var ViewSelect = document.getElementById(
                    button + "BtnViewSelect"
                );
                ViewSelect.innerHTML = `
              <option value="">Select..</option>
              `;
                views.map(function(view) {
                    const templateLiteral = `
                  <option value="${view.id}">${view.id}</option>
                  `;

                    ViewSelect.innerHTML = ViewSelect.innerHTML.concat(
                        templateLiteral
                    );
                });
            }
        });
    }

    if (document.getElementById(button + "BtnTemplateSelect")) {
        $.ajax({
            url: "/getTemplates",
            type: "get",
            async: false,
            success: function(data) {
                templates = Object.values(data);
                var TemplateSelect = document.getElementById(
                    button + "BtnTemplateSelect"
                );
                TemplateSelect.innerHTML = `
              <option value="">Select..</option>
              `;
                templates.map(function(template) {
                    const templateLiteral = `
                  <option value="${template.id}">${template.template_name}</option>
                  `;

                    TemplateSelect.innerHTML = TemplateSelect.innerHTML.concat(
                        templateLiteral
                    );
                });
            }
        });
    }
}

$("#TaskBtnForm").submit(function(e) {
    e.preventDefault();
    saveButton("Task");
});

$("#DeliveryBtnForm").submit(function(e) {
    e.preventDefault();
    saveButton("Delivery");
});

$("#ReminderBtnForm").submit(function(e) {
    e.preventDefault();
    saveButton("Reminder");
});

$("#EventBtnForm").submit(function(e) {
    e.preventDefault();
    saveButton("Event");
});

function saveButton(button) {
    console.log("si");
    let formData = {
        status: null,
        user: null,
        client: null,
        project: null,
        view: null,
        message: null,
        end_date: null,
        template: null,
        developer: null,
        title: null,
        file: null
    };

    if (button == "Task") {
        let array = [];
        let cantComments = document.getElementById("commentsCant").value;
        for (var i = 1; i <= cantComments; i++) {
            let comment = document.getElementById("TaskBtnMessage" + i);
            array.push(comment.value);
        }
        formData["message"] = array.join();
        console.log(array.join());
    }

    if (document.getElementById(button + "BtnStatusSelect")) {
        var status = document.getElementById(button + "BtnStatusSelect").value;
        formData["status"] = status;
        // console.log('Status: '+status);
    }
    if (document.getElementById(button + "BtnUserSelect")) {
        var user = document.getElementById(button + "BtnUserSelect").value;
        formData["user"] = user;
        //console.log('User: ' + user);
    }

    if (document.getElementById(button + "BtnClientSelect")) {
        var client = document.getElementById(button + "BtnClientSelect").value;
        formData["client"] = client;
        //console.log('Client: ' + client);
    }

    if (document.getElementById(button + "BtnProjectSelect")) {
        var project = document.getElementById(button + "BtnProjectSelect")
            .value;
        formData["project"] = project;
        //console.log('Project: ' + project);
    }

    if (document.getElementById(button + "BtnViewSelect")) {
        var view = document.getElementById(button + "BtnViewSelect").value;
        if (view != null) {
            formData["view"] = view;
            //console.log('View: ' + view);
        }
    }

    if (document.getElementById(button + "BtnMessage") && button !== "Task") {
        var message = document.getElementById(button + "BtnMessage").value;
        formData["message"] = message;
        //console.log('Message: ' + message);
    }

    if (document.getElementById(button + "BtnEndDate")) {
        var endDate = document.getElementById(button + "BtnEndDate").value;
        formData["end_date"] = endDate;
        //console.log('End date: ' + endDate);
    }

    if (document.getElementById(button + "BtnTemplateSelect")) {
        var template = document.getElementById(button + "BtnTemplateSelect")
            .value;
        formData["template"] = template;
        //console.log('Template: ' + template);
    }

    if (document.getElementById(button + "BtnDeveloperSelect")) {
        var developer = document.getElementById(button + "BtnDeveloperSelect")
            .value;
        formData["developer"] = developer;
        //console.log('Developer: ' + developer);
    }

    if (document.getElementById(button + "BtnTitle")) {
        var title = document.getElementById(button + "BtnTitle").value;
        formData["title"] = title;
        //console.log('Title: ' + title);
    }

    if (document.getElementById(button + "BtnFile")) {
        var file = document.getElementById(button + "BtnFile").value;
        formData["file"] = file;
        //console.log('File: ' + file);
    }
    formData = JSON.stringify(formData);
    console.log(formData);

    let route = "/add" + button + "/" + formData;
    console.log(route);
    fetch(route)
        .then(function(response) {
            return response.json();
        })
        .then(function(data) {
            document.getElementById(button + "BtnForm").reset();
            console.log(data.status);
            getPosts();
            getReminders();
            getTasks();

            $("#close" + button).click();
        })
        .catch(function(error) {
            console.log(error);
        });
}
