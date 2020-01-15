
getPosts();
$('.clientSelectOption').click(function(){
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
                <option value="${project.id}" onclick="projectSelect()"> ${project.project_name} </option>
                `;


            selectProjects.innerHTML = selectProjects.innerHTML.concat(templateLiteral);

            });
        })
        .catch(function(error){
            console.log(error);
        })


    }else{
        var selectProject = document.getElementById('projectSelect');
        selectProject.innerHTML = `<option selected onclick="projectSelect()" value="All">All</option>`
        var selectView = document.getElementById('viewSelect');
        selectView.innerHTML = `<option selected onclick="viewSelect()" value="All">All</option>`;
        document.getElementById('projectSelect').value='All';
        document.getElementById('projectSelect').disabled = true;
        document.getElementById('viewSelect').value='All';
        document.getElementById('viewSelect').disabled = true;

    }
});

function projectSelect(){
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
}

function viewSelect(){
    var viewOption = document.getElementById('viewSelect').value;
    console.log('value view: ' + viewOption);
    getPosts()
}


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
                if(post.view_id != null){
                    const templateLiteral = `
                <div class="row p-2 border-bottom mb-2">
                <p class=" col-11 postInfo">Posted by: ${post.user_name} on ${post.date} </p>
                <span class="postTitle mb-2">${post.title}</span>
                <span class="postMessage mb-2">${post.message}</span>
                <img src="${post.image}" class="postImage" alt="">
                <p class="postFooter">Project: ${post.project_name}   Client: ${post.client_id} View: ${post.view_id}</p>

            </div>
                `;
                divPosts.innerHTML = divPosts.innerHTML.concat(templateLiteral);

                }else{
                    const templateLiteral = `
                <div class="row p-2 border-bottom mb-2">
                <p class=" col-11 postInfo">Posted by: ${post.user_name} on ${post.date} </p>
                <span class="postTitle mb-2">${post.title}</span>
                <span class="postMessage mb-2">${post.message}</span>
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
