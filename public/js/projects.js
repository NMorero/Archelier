
getCarousel();




function getCarousel(){
    fetch("/Admin/Projects/get")
        .then(function(response) {
            return response.json();
        })
        .then(function(data) {
            var carrusel1 = document.getElementById("carrusel1");
            var carrusel2 = document.getElementById('carrusel2');
            carrusel1.innerHTML = "";
            carrusel2.innerHTML = "";
            data.map(function(project) {
                console.log(project.client);

                if(project.status == 'ongoing'){
                    var templateLiteral = `<div class="p-2">
                <div class="rounded bg-white p-2" style="height:48vh;">
                    <h6 class="" style="height:10%">${project.project_name}</h6>
                    <p class="m-0 p-0">${project.client}</p>
                    <div class="row mt-0 pt-0">
                        <img class="col-12" src="/resorces/imgExample2.svg"  alt="">
                        <div class="col-12 row text-center pr-4 pl-2 ml-2 mt-1">
                            <img class="col-4 py-1 px-0" src="/resorces/imgExample2.svg" alt="" >
                            <img class="col-4 py-1 px-0" src="/resorces/imgExample2.svg" alt="" >
                            <img class="col-4 py-1 px-0" src="/resorces/imgExample2.svg" alt="" >
                        </div>
                    </div>
                    <p class="row justify-content-between mt-1" style="text-transform:uppercase"><span class="col-5">${project.status}</span> <span class="col-6 text-right">${project.delivery_date}</span></p>
                    <div class="row">
                        <p class=" col-3" onmouseover="document.getElementById('div'+${project.id}).style.display = 'block';" onmouseout="document.getElementById('div'+${project.id}).style.display = 'none';">
                            <span class="rounded-circle p-2 bg-secondary text-white">${project['manager']['name'].charAt(0)}${project['manager']['lastname'].charAt(0)}</span>
                        </p>
                        <div class="rounded bg-white mt-3 ml-2" id="div${project.id}" style="position:absolute;display:none">
                            ${project['manager']['name']} ${project['manager']['lastname']}
                        </div>
                            <p class="col-3" onmouseover="document.getElementById('leader'+${project.id}).style.display = 'block';" onmouseout="document.getElementById('leader'+${project.id}).style.display = 'none';">
                                <span class="rounded-circle p-2 bg-secondary text-white">${project['leader']['name'].charAt(0)}${project['leader']['lastname'].charAt(0)}</span>
                            </p>
                        <div class="rounded bg-white mt-3 ml-5" id="leader${project.id}" style="position:absolute;display:none">
                            ${project['leader']['name']} ${project['leader']['lastname']}
                        </div>
                        <button class="bg-transparent border-0 col-12 ml-1 text-center" onclick="desProject(${project.id})"><i class="fas fa-chevron-down"></i></button>
                    </div>

                </div>
                </div>`;

                carrusel1.innerHTML = carrusel1.innerHTML.concat(templateLiteral);
                }else{
                    var templateLiteral = `<div class="p-2 ">

                <div class="rounded p-2 pauseProject border" style="height:40vh;">
                <button class="bg-transparent border-0 p-0 m-0 col-12 ml-1 text-center"  onclick="acProject(${project.id})"><i class="fas fa-chevron-up"></i></button>
                    <p class="p-0 m-0" style="height:40px">${project.project_name}</p>
                    <p class="p-0 m-0">${project.client}</p>
                    <div class="row mt-0 pt-0">
                        <img class="col-12" src="/resorces/imgExample2.svg"  alt="">

                    </div>
                    <p class="row justify-content-between " style="text-transform:uppercase"><span class="col-5">${project.status}</span> <span class="col-6 text-right">${project.delivery_date}</span></p>
                    <div class="row">
                        <p class=" col-3" onmouseover="document.getElementById('div'+${project.id}).style.display = 'block';" onmouseout="document.getElementById('div'+${project.id}).style.display = 'none';">
                            <span class="rounded-circle p-2 bg-secondary text-white">${project['manager']['name'].charAt(0)}${project['manager']['lastname'].charAt(0)}</span>
                        </p>
                        <div class="rounded bg-white mt-3 ml-2" id="div${project.id}" style="position:absolute;display:none">
                            ${project['manager']['name']} ${project['manager']['lastname']}
                        </div>
                            <p class="col-3" onmouseover="document.getElementById('leader'+${project.id}).style.display = 'block';" onmouseout="document.getElementById('leader'+${project.id}).style.display = 'none';">
                                <span class="rounded-circle p-2 bg-secondary text-white">${project['leader']['name'].charAt(0)}${project['leader']['lastname'].charAt(0)}</span>
                            </p>
                        <div class="rounded bg-white mt-3 ml-5" id="leader${project.id}" style="position:absolute;display:none">
                            ${project['leader']['name']} ${project['leader']['lastname']}
                        </div>


                    </div>
                </div>
                </div>`;

                carrusel2.innerHTML = carrusel2.innerHTML.concat(templateLiteral);
                }
            });
            $('.carousel1').slick({

                prevArrow: $('.prev'),
                  nextArrow: $('.next'),
                slidesToShow: 6,
                slidesToScroll: 1
              });
              $('.carousel2').slick({

                prevArrow: $('.prev2'),
                  nextArrow: $('.next2'),
                slidesToShow: 6,
                slidesToScroll: 1
              });
        })
        .catch(function(error) {
            console.log(error);
        });

}


function desProject(id){
    fetch("/Admin/Projects/Deactivate/"+id)
        .then(function(response) {
            return response.json();
        })
        .then(function(data) {
            location.reload(true);
        })
        .catch(function(error) {
            console.log(error);
        });
}


function acProject(id){
    fetch("/Admin/Projects/Activate/"+id)
        .then(function(response) {
            return response.json();
        })
        .then(function(data) {
            location.reload(true);
        })
        .catch(function(error) {
            console.log(error);
        });
}
