getPosts();
getReminders();
getTasks();

function autoRefreshPage() {
    getPosts();
    getReminders();
    getTasks();
}

setInterval("autoRefreshPage()", 30000);
var comments = [];
let cantComments = 1;
function addcommentTask() {
    let commentDiv = document.getElementById("commentTaskBtn");
    let cantInp = document.getElementById("commentsCant");
    let prevComment = document.getElementById("TaskBtnMessage" + cantInp.value);
    console.log(prevComment);

    comments.push({
        name: prevComment.name,
        value: prevComment.value,
        placeholder: prevComment.placeholder,
        id: prevComment.id
    });
    console.log(comments);
    comments.forEach(comm => {
        let input = document.getElementById(comm.id);
        input.setAttribute("value", comm.value);
        input.setAttribute("name", comm.name);
        input.setAttribute("placeholder", comm.placeholder);
    });
    cantComments++;
    cantInp.setAttribute("value", cantComments);

    let template1 = `<input type="text" name="TaskBtnMessage${cantComments}" id="TaskBtnMessage${cantComments}" class="form-control" placeholder="Task ${cantComments}" required>`;
    commentDiv.innerHTML = commentDiv.innerHTML.concat(template1);
}

$("#clientSelect").change(function() {
    console.log("si");
    var clientoption = document.getElementById("clientSelect").value;
    console.log("value client: " + clientoption);

    if (clientoption != "All") {
        fetch("getProjectsByClient/" + clientoption)
            .then(function(response) {
                return response.json();
            })
            .then(function(data) {
                console.log(data);
                document.getElementById("projectSelect").disabled = false;
                var selectProjects = document.getElementById("projectSelect");
                selectProjects.innerHTML = `<option selected onclick="projectSelect()" value="All">Project...</option>`;
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
    }
});

function getPosts() {
    var client = document.getElementById("clientSelect").value;
    var project = document.getElementById("projectSelect").value;
    var view = "All";
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
                    <div class="row border-botBlue my-2">
                    <p class=" col-12 text-right postInfo mb-0">${post.user_name} - ${post.date} </p>
                    <p class="col-12 postMessage mt-1" ><b>${post.title}:</b> ${post.message}</p>
                    <img src="${post.image}" class="postImage" alt="">


                </div>
                    `;
                        divPosts.innerHTML = divPosts.innerHTML.concat(
                            templateLiteral
                        );
                    } else {
                        const templateLiteral = `
                    <div class="row border-botBlue my-2">
                    <p class=" col-12 text-right postInfo mb-0">${post.user_name} - ${post.date} </p>
                    <p class="col-12 postMessage mt-1" ><b>${post.title}:</b> ${post.message}</p>


                </div>
                    `;
                        divPosts.innerHTML = divPosts.innerHTML.concat(
                            templateLiteral
                        );
                    }
                } else if (post.type == "feedbackCreate") {
                    const templateLiteral = `
                    <a href="/Feedback/Edit/${post.feedback_id}" class="row border-botBlue p-1 text-decoration-none text-dark justify-content-between my-2">
                        <p class=" col-12 text-right postInfo mb-0">${post.user_name} - ${post.date} </p>
                        <p class="col-12 postMessage mt-1" ><b>${post.title}:</b> ${post.message}</p>
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
                    <a href="/Feedback/Edit/${post.feedback_id}" class="row border-botBlue p-1 text-decoration-none text-dark my-2">
                        <p class=" col-12 text-right postInfo mb-0">${post.user_name} - ${post.date} </p>
                        <p class="col-12 postMessage mt-1" ><b>${post.title}:</b> ${post.message}</p>
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
                <li class="border-botBlue justify-content-between d-flex row reminder-li text-dark align-center "><p class="col-8 pt-2"><i class="far fa-square " ></i> ${reminder.message}</p>     <button class=" btn button-reminder col-1 " onclick="deleteReminder(${reminder.id})">x</button> </li>
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
                        <div class="col-12 row  mb-1 m-0 p-0">
                            <h6 class="col-12 text-right">${tasks.day}</h6>
                            <div class="col-12 p-0 m-0" id="tasks${i}">
                            </div>
                        </div>
                    `;
                tasksBox.innerHTML = tasksBox.innerHTML.concat(templateLiteral);

                tasks.projects.map(function(task) {
                    let tasksBox2 = document.getElementById("tasks" + i);

                    const templateLiteral = `
                        <div class="row border-bottom m-0 p-0"><ul class="p-0 m-0" style="list-style-type: none;">`;
                    let comments = JSON.parse(task.message);
                    let templatelit2 = ``;
                    comments.map(function(comm) {
                        if (comm.status == 1) {
                            let temp = `<li class=" border-bottom mb-2 m-0 p-0">
                        <div class="form-check form-check-inline m-0 p-0">
                        <input class="form-check-input" type="checkbox" id="task${task.id}Check${comm.id}" value="option1" onclick="test(${task.id}, ${comm.id})">
                        <label class="form-check-label" for="task${task.id}Check${comm.id}">${comm.data}</label>
                      </div>
                        </li>`;
                            templatelit2 = templatelit2 + temp;
                        } else {
                            let temp = `<li class=" border-bottom mb-2 m-0 p-0" >
                        <div class="form-check form-check-inline p-0 m-0">
                        <input class="form-check-input" type="checkbox" id="task${task.id}Check${comm.id}" value="option1" onclick="test(${task.id}, ${comm.id})" checked>
                        <label class="form-check-label" for="task${task.id}Check${comm.id}"><strike>${comm.data}</strike></label>
                      </div>
                        </li>`;
                            templatelit2 = templatelit2 + temp;
                        }
                    });

                    if (task.client && task.client.length) {
                        const templatelit3 = `</ul><p class="taskFooter text-right col-12">${task.client.client_name} // ${task.project.project_name} // ${task.user.username}</p>
                        </div>
                        `;
                        tasksBox2.innerHTML = tasksBox2.innerHTML.concat(
                            templateLiteral + templatelit2 + templatelit3
                        );
                    } else {
                        tasksBox2.innerHTML = tasksBox2.innerHTML.concat(
                            templateLiteral + templatelit2
                        );
                    }
                });

                tasks.events.map(function(event) {
                    if (
                        typeof event.client == "undefined" ||
                        event.client == null
                    ) {
                        let tasksBox3 = document.getElementById("tasks" + i);

                        const templateLiteral = `
                        <div class="row border-bottom ev-green p-0">
                        <p class="taskMessage col-12 mb-0 ">${event.message}</p>

                        </div>
                        `;
                        tasksBox3.innerHTML = tasksBox3.innerHTML.concat(
                            templateLiteral
                        );
                    } else {
                        let tasksBox3 = document.getElementById("tasks" + i);

                        const templateLiteral = `
                        <div class="row border-bottom ev-green p-0">
                            <p class="taskMessage col-12 mb-0 ">${event.message}</p>

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

function test(taskId, commId) {
    console.log("task:" + taskId + "comm: " + commId);
    fetch("/changeTask/" + taskId + "/" + commId)
        .then(function(response) {
            return response.json();
        })
        .then(function(data) {
            getTasks();
        })
        .catch(function(error) {
            console.log(error);
        });
}
