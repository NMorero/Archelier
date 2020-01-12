$('.clientSelectOption').click(function(){
    var clientoption = document.getElementById('clientSelect').value;
    console.log('value client: ' + clientoption);
    if(clientoption != 'All'){



        fetch('getProjectsByClient/'+clientoption)
        .then(function(response){
            return response.json();
        })
        .then(function(data){
            console.log(data);
            document.getElementById('projectSelect').disabled = false;
            var selectProjects = document.getElementById('projectSelect');

            data.map(function (project) {
                const templateLiteral = `
                <option value="${project.id}" class="projectSelectOption"> ${project.project_name} </option>
                `;


            selectProjects.innerHTML = selectProjects.innerHTML.concat(templateLiteral);

            });
        })
        .catch(function(error){
            console.log(error);
        })


    }else{
        document.getElementById('projectSelect').value='All';
        document.getElementById('projectSelect').disabled = true;
        document.getElementById('viewSelect').value='All';
        document.getElementById('viewSelect').disabled = true;

    }
});

$('.projectSelectOption').click(function(){
    var projectOption = document.getElementById('projectSelect').value;
    console.log('value project: ' + projectOption);
    if(document.getElementById('projectSelect').value != 'All'){
        document.getElementById('viewSelect').disabled = false;
    }else{
        document.getElementById('viewSelect').value='All';
        document.getElementById('viewSelect').disabled = true;

    }
});


$('.viewSelectOption').click(function(){
    var viewOption = document.getElementById('viewSelect').value;
    console.log('value view: ' + viewOption);
});
