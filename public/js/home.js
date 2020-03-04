getPosts();
getReminders();
getTasks();

function autoRefreshPage() {
    getPosts();
    getReminders();
    getTasks();
}
setInterval("autoRefreshPage()", 30000);
var i = 2;
function addcommentTask() {
    const commentDiv = document.getElementById("commentTaskBtn");
    var cant = document.getElementById("commentsCant");
    templateLiteral = `<input type="text" name="TaskBtnMessage${i}" id="TaskBtnMessage${i}" class="form-control mt-1" placeholder="Task ${i}" required>`;
    commentDiv.innerHTML = commentDiv.innerHTML.concat(templateLiteral);
    cant.setAttribute("value", i);
    i++;

    console.log(cant);
}

$("#clientSelect").change(function() {
    console.log("si");
    var clientoption = document.getElementById("clientSelect").value;
    console.log("value client: " + clientoption);
    getPosts();
    if (clientoption != "All") {
        fetch("getProjectsByClient/" + clientoption)
            .then(function(response) {
                return response.json();
            })
            .then(function(data) {
                console.log(data);
                document.getElementById("projectSelect").disabled = false;
                var selectProjects = document.getElementById("projectSelect");
                selectProjects.innerHTML = `<option selected onclick="projectSelect()" value="All">All</option>`;
                data.map(function(project) {
                    const templateLiteral = `
                <option value="${project.id}" > ${project.project_name} </option>
                `;

                    selectProjects.innerHTML = selectProjects.innerHTML.concat(
                        templateLiteral
                    );
                });
            })
            .catch(function(error) {
                console.log(error);
            });
    } else {
        var selectProject = document.getElementById("projectSelect");
        selectProject.innerHTML = `<option selected  value="All">All</option>`;
        var selectView = document.getElementById("viewSelect");
        selectView.innerHTML = `<option selected  value="All">All</option>`;
        document.getElementById("projectSelect").value = "All";
        document.getElementById("projectSelect").disabled = true;
        document.getElementById("viewSelect").value = "All";
        document.getElementById("viewSelect").disabled = true;
    }
});

$("#projectSelect").change(function() {
    var projectOption = document.getElementById("projectSelect").value;
    console.log("value project: " + projectOption);
    getPosts();
    if (document.getElementById("projectSelect").value != "All") {
        fetch("getViewsByProject/" + projectOption)
            .then(function(response) {
                return response.json();
            })
            .then(function(data) {
                console.log(data);
                document.getElementById("viewSelect").disabled = false;
                var selectView = document.getElementById("viewSelect");
                selectView.innerHTML = "";
                selectView.innerHTML = `<option selected onclick="viewSelect()" value="All">All</option>`;
                data.map(function(view) {
                    const templateLiteral = `
                <option value="${view.id}" onclick="viewSelect()"> ${view.id} </option>
                `;

                    selectView.innerHTML = selectView.innerHTML.concat(
                        templateLiteral
                    );
                });
            })
            .catch(function(error) {
                console.log(error);
            });
    } else {
        var selectView = document.getElementById("viewSelect");
        selectView.innerHTML = `<option selected onclick="viewSelect()" value="All">All</option>`;
        document.getElementById("viewSelect").value = "All";
        document.getElementById("viewSelect").disabled = true;
    }
});

$("#viewSelect").change(function() {
    var viewOption = document.getElementById("viewSelect").value;
    console.log("value view: " + viewOption);
    getPosts();
});

function getPosts() {
    var client = document.getElementById("clientSelect").value;
    var project = document.getElementById("projectSelect").value;
    var view = document.getElementById("viewSelect").value;
    var route = "/getPosts/" + client + "/" + project + "/" + view;
    console.log(route);
    fetch(route)
        .then(function(response) {
            return response.json();
        })
        .then(function(data) {
            console.log(data);

            var divPosts = document.getElementById("divPosts");
            divPosts.innerHTML = "";
            data.map(function(post) {
                if (post.type == "post") {
                    if (post.image != null) {
                        const templateLiteral = `
                    <div class="row border-bottom">
                    <p class=" col-12 text-right postInfo mb-0">${post.user_name} - ${post.date} </p>
                    <p class="col-12 postMessage" ><b>${post.title}:</b> ${post.message}</p>
                    <img src="${post.image}" class="postImage" alt="">


                </div>
                    `;
                        divPosts.innerHTML = divPosts.innerHTML.concat(
                            templateLiteral
                        );
                    } else {
                        const templateLiteral = `
                    <div class="row border-bottom">
                    <p class=" col-12 text-right postInfo mb-0">${post.user_name} - ${post.date} </p>
                    <p class="col-12 postMessage" ><b>${post.title}:</b> ${post.message}</p>


                </div>
                    `;
                        divPosts.innerHTML = divPosts.innerHTML.concat(
                            templateLiteral
                        );
                    }
                } else if (post.type == "feedbackCreate") {
                    const templateLiteral = `
                    <a href="/Feedback/Edit/${post.feedback_id}" class="row border-bottom p-1 text-decoration-none text-dark justify-content-between">
                        <p class=" col-12 text-right postInfo mb-0">${post.user_name} - ${post.date} </p>
                        <p class="col-12 postMessage" ><b>${post.title}:</b> ${post.message}</p>
                        <ul>

                    `;

                    var comments = JSON.parse(post.feedback.message);
                    var templatelit3 = ``;
                    comments.map(function(comm) {
                        if (comm.status == "done") {
                            var temp = `<li><strike>
                            ${comm.comment}
                            </strike>
                        </li>`;
                        } else {
                            var temp = `<li>
                            ${comm.comment}
                        </li>`;
                        }

                        templatelit3 = templatelit3 + temp;
                    });
                    const templatelit2 = `
                    </ul>
                    <img src="${post.image}" class="postImage" alt="">
                </a>`;
                    const template =
                        templateLiteral + templatelit3 + templatelit2;
                    divPosts.innerHTML = divPosts.innerHTML.concat(template);
                } else {
                    const templateLiteral = `
                    <a href="/Feedback/Edit/${post.feedback_id}" class="row border-bottom p-1 text-decoration-none text-dark">
                        <p class=" col-12 text-right postInfo mb-0">${post.user_name} - ${post.date} </p>
                        <p class="col-12 postMessage" ><b>${post.title}:</b> ${post.message}</p>
                        <ul class="col-9">

                    `;

                    var comments = JSON.parse(post.feedback.message);
                    var templatelit3 = ``;
                    comments.map(function(comm) {
                        if (comm.status == "done") {
                            var temp = `<li><strike>
                            ${comm.comment}
                            </strike>
                        </li>`;
                        } else {
                            var temp = `<li>
                            ${comm.comment}
                        </li>`;
                        }

                        templatelit3 = templatelit3 + temp;
                    });
                    const templatelit2 = `
                    </ul>
                    <img class="col-3 mb-1" src="${post.image}"  alt="" height"50" width="60">
                </a>`;
                    const template =
                        templateLiteral + templatelit3 + templatelit2;
                    divPosts.innerHTML = divPosts.innerHTML.concat(template);
                }
            });
        })
        .catch(function(error) {
            console.log(error);
        });
}

function getReminders() {
    fetch("/getReminders")
        .then(function(response) {
            return response.json();
        })
        .then(function(data) {
            console.log(data);

            var remindersBox = document.getElementById("remindersBox");
            remindersBox.innerHTML = "";

            data.map(function(reminder) {
                const templateLiteral = `
                <li class="list-group-item justify-content-around d-flex row reminder-li p-2 bg-dark"><p class="col-8">${reminder.message}</p>     <button class="p-0 btn button-reminder col-1 btn-danger" onclick="deleteReminder(${reminder.id})">x</button> </li>
                `;

                remindersBox.innerHTML = remindersBox.innerHTML.concat(
                    templateLiteral
                );
            });
        })
        .catch(function(error) {
            console.log(error);
        });
}

function deleteReminder(id) {
    Swal.fire({
        title: "Delete reminder?",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yes, delete it!"
    }).then(result => {
        if (result.value) {
            var route = "/deleteReminder/" + id;
            console.log(route);
            fetch(route)
                .then(function(response) {
                    return response.json();
                })
                .then(function(data) {
                    console.log(data);
                    getReminders();
                })
                .catch(function(error) {
                    console.log(error);
                });

            Swal.fire(
                "Deleted!",
                "Your reminder has been deleted."
                //'success'
            );
        }
    });
}

function getTasks() {
    fetch("/getTasks")
        .then(function(response) {
            return response.json();
        })
        .then(function(data) {
            data = Object.values(data);
            console.log(data);
            var i = 0;
            var tasksBox = document.getElementById("tasksBox");
            tasksBox.innerHTML = "";
            data.map(function(tasks) {
                i++;

                const templateLiteral = `
                        <div class="row px-2 mb-1">
                            <h6 class="col-12 text-right">${tasks.day}</h6>
                            <div class="col-12" id="tasks${i}">
                            </div>
                        </div>
                    `;
                tasksBox.innerHTML = tasksBox.innerHTML.concat(templateLiteral);

                tasks.projects.map(function(task) {
                    let tasksBox2 = document.getElementById("tasks" + i);

                    const templateLiteral = `
                        <div class="row border-bottom"><ul>`;
                    let comments = task.message.split(",");
                    let templatelit2 = ``;
                    comments.map(function(comm) {
                        let temp = `<li>
                            ${comm}
                        </li>`;

                        templatelit2 = templatelit2 + temp;
                    });

                    const templatelit3 = `</ul><p class="taskFooter text-right col-12">${task.client.client_name} // ${task.project.project_name} // ${task.user.username}</p>
                        </div>
                        `;
                    tasksBox2.innerHTML = tasksBox2.innerHTML.concat(
                        templateLiteral + templatelit2 + templatelit3
                    );
                });

                tasks.events.map(function(event) {
                    if (
                        typeof event.client == "undefined" ||
                        event.client == null
                    ) {
                        let tasksBox3 = document.getElementById("tasks" + i);

                        const templateLiteral = `
                        <div class="row border-bottom table-warning">
                            <p class="taskMessage col-12 mb-1 mt-3 pl-4">${event.message}</p>
                            <p class="taskFooter text-right col-12"></p>
                        </div>
                        `;
                        tasksBox3.innerHTML = tasksBox3.innerHTML.concat(
                            templateLiteral
                        );
                    } else {
                        let tasksBox3 = document.getElementById("tasks" + i);

                        const templateLiteral = `
                        <div class="row border-bottom table-warning">
                            <p class="taskMessage col-12 mb-1">${event.message}</p>

                        </div>
                        `;
                        tasksBox3.innerHTML = tasksBox3.innerHTML.concat(
                            templateLiteral
                        );
                    }
                });
            });
        })
        .catch(function(error) {
            console.log(error);
        });
}
