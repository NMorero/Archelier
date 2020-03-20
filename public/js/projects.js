
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
                    var templateLiteral = `<div class="p-2 divHeightCarousel " id="myBtn${project.id}" >
                <div class="rounded bg-white p-2 divHeightCarousel" >
                    <p class="nameProject" style="height:10%">${project.project_name}</p>
                    <p class="m-0 p-0 infoProject">${project.client}</p>
                    <div class="row mt-0 pt-0">
                        <img class="col-12" src="/resorces/imgExample2.svg"  alt="">
                        <div class="col-12 row text-center pr-4 pl-2 ml-2 mt-1">
                            <img class="col-4 imgProjectSmall px-1 py-0 m-0" src="/resorces/imgExample2.svg" alt="" >
                            <img class="col-4 imgProjectSmall px-1 py-0 m-0" src="/resorces/imgExample2.svg" alt="" >
                            <img class="col-4 imgProjectSmall px-1 py-0 m-0" src="/resorces/imgExample2.svg" alt="" >
                        </div>
                    </div>
                    <p class="row justify-content-between mb-0 mt-1 infoProject " style="text-transform:uppercase"><span class="col-4">${project.status}</span> <span class="col-7 text-right">${project.delivery_date}</span></p>
                    <div class="row boxBtnHover">
                        <p class=" col-3  " onmouseover="document.getElementById('div'+${project.id}).style.display = 'block';" onmouseout="document.getElementById('div'+${project.id}).style.display = 'none';">
                            <span class="rounded-circle bg-secondary text-white btnHoversProject">${project['manager']['name'].charAt(0)}${project['manager']['lastname'].charAt(0)}</span>
                        </p>
                        <div class="rounded bg-white mt-3 ml-2 infoHover" id="div${project.id}" style="position:absolute;display:none">
                            ${project['manager']['name']} ${project['manager']['lastname']}
                        </div>
                            <p class="col-3  " onmouseover="document.getElementById('leader'+${project.id}).style.display = 'block';" onmouseout="document.getElementById('leader'+${project.id}).style.display = 'none';">
                                <span class="rounded-circle  bg-secondary text-white btnHoversProject">${project['leader']['name'].charAt(0)}${project['leader']['lastname'].charAt(0)}</span>
                            </p>
                        <div class="rounded bg-white mt-3 ml-5 infoHover" id="leader${project.id}" style="position:absolute;display:none">
                            ${project['leader']['name']} ${project['leader']['lastname']}
                        </div>
                        <button class="bg-transparent border-0 col-12 m-0 p-0 ml-1 infoProject text-center" onclick="desProject(${project.id})"><i class="fas fa-chevron-down"></i></button>
                    </div>

                </div>
                </div>`;

                carrusel1.innerHTML = carrusel1.innerHTML.concat(templateLiteral);
                }else{
                    var templateLiteral = `<div class="p-2 " id="myBtn${project.id}" style="height:40vh; width:15vw">

                <div class="rounded p-2 pauseProject border ">
                <button class="bg-transparent border-0 p-0 m-0 col-12 ml-1 text-center infoProject"  onclick="acProject(${project.id})"><i class="fas fa-chevron-up"></i></button>
                    <p class="p-0 m-0 nameProject" style="height:10%">${project.project_name}</p>
                    <p class="p-0 m-0 infoProject">${project.client}</p>
                    <div class="row mt-0 pt-0">
                        <img class="col-12" src="/resorces/imgExample2.svg"  alt="">

                    </div>
                    <p class="row justify-content-between infoProject mb-0" style="text-transform:uppercase"><span class="col-4">${project.status}</span> <span class="col-7 text-right">${project.delivery_date}</span></p>
                    <div class="row pt-1 boxBtnHover">
                        <p class=" col-3" onmouseover="document.getElementById('div'+${project.id}).style.display = 'block';" onmouseout="document.getElementById('div'+${project.id}).style.display = 'none';">
                            <span class="rounded-circle bg-secondary text-white btnHoversProject">${project['manager']['name'].charAt(0)}${project['manager']['lastname'].charAt(0)}</span>
                        </p>
                        <div class="rounded bg-white mt-3 ml-2 infoHover" id="div${project.id}" style="position:absolute;display:none">
                            ${project['manager']['name']} ${project['manager']['lastname']}
                        </div>
                            <p class="col-3" onmouseover="document.getElementById('leader'+${project.id}).style.display = 'block';" onmouseout="document.getElementById('leader'+${project.id}).style.display = 'none';">
                                <span class="rounded-circle  bg-secondary text-white btnHoversProject">${project['leader']['name'].charAt(0)}${project['leader']['lastname'].charAt(0)}</span>
                            </p>
                        <div class="rounded bg-white mt-3 ml-5 infoHover" id="leader${project.id}" style="position:absolute;display:none">
                            ${project['leader']['name']} ${project['leader']['lastname']}
                        </div>


                    </div>
                </div>
                </div>`;

                carrusel2.innerHTML = carrusel2.innerHTML.concat(templateLiteral);
                }
            });
            $('.carousel1').slick({

                arrows:true,
                nextArrow: $('.next'),
                prevArrow: '<button class="prevBtn rounded-circle bg-dark text-white border-0"><i class="fas fa-chevron-left"></i></button>',
                slidesToShow: 6,
                slidesToScroll: 1
              });
              $('.carousel2').slick({
                arrows:true,
                prevArrow: '<button class="prevBtn2 rounded-circle bg-dark text-white border-0"><i class="fas fa-chevron-left"></i></button>',
                  nextArrow: '<button class="next2 rounded-circle bg-dark text-white border-0" ><i class="fas fa-chevron-right"></i></button>',
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
