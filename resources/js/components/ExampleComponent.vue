<template>
    <div class="main">
        <canvas @mousedown="startPainting" @mouseup="finishedPainting" @mousemove="draw"  id="canvas"  @click="addNumber">

        </canvas>

        <div id="menu">
            <h3>Tools</h3>
            <input type="file" name="" id="imgInput" @change="newImg = true" hidden>
            <input type="file" name="" id="backInput" @change="onFileChange" hidden>
            <input type="color" v-model="color" id="colorInput" hidden>



            <button class="btnMenu" id="btn1" @click="flag = false; brushF = true; setFocus(1)"><i class="fas fa-paint-brush"></i></button>
            <button class="btnMenu" id="btn2" @click="oPalette(); setFocus(2)"><i class="fas fa-palette"></i></button>
            <button class="btnMenu" id="btn3" @click="flag = true; brushF = false; setFocus(3)"><i class="far fa-flag"></i></button>
            <button class="btnMenu" id="btn4" @click="oBackInp(); setFocus(4)"><i class="fas fa-image"></i></button>
            <button class="btnMenu" id="btn5" @click="cUndo(); setFocus(5)"><i class="fas fa-undo-alt"></i></button>
            <button class="btnMenu" id="btn6" @click="cRedo(); setFocus(6)"><i class="fas fa-redo-alt"></i></button>
            <button class="btnMenu" id="btn7" @click="oImg(); setFocus(7)"><i class="far fa-file-image"></i></button>



                <div id="commentBox">
                    <h3>Comments</h3>
                    <div v-for="comm in comments" :key="comments.id" id="comentBox" class="input">
                        {{comm.number}}  <input type="text" value="comm.value" v-model="comm.value" >
                    </div>
                <button id="btnAddCom" @click="saveFeedback">Save</button>

                </div>
        </div>
    </div>
</template>

<script>


    export default {

        data() {
            return {
                message: 'Hello Vue!',
                vueCanvas:null,
                painting:false,
                canvas:null,
                ctx:null,
                comments: [],
                image: null,
                cantMark: 0,
                flag: false,
                color: 'black',
                cStep: 0,
                cPushArray: new Array,
                newImg: false,
                brushF: false,

            };
        },

        methods: {
            onFileChange(e) {
                const file = e.target.files[0];
                this.image = URL.createObjectURL(file);
                var ctx = canvas.getContext("2d");


                var img = new Image();
                img.src = this.image;
                 var w = window.innerWidth;
            var h = window.innerHeight;


                img.onload = function() {
                     var hImg = this.height;
                var wImg = this.width;

                var rAsp = wImg / hImg;
                console.log(rAsp);


                    if(w <= 1400 && w > 1200){
                        if(rAsp >= 1.77){
                            ctx.drawImage(img, 0, 0, 1000, 562);
                        }else{
                            var newW = (562 * wImg) / hImg;
                            var newX = 1000 - newW;
                            ctx.drawImage(img,  newX / 2, 0, newW, 562);
                        }


                    }else if(w <= 1200){

                          if(rAsp >= 1.77){
                            ctx.drawImage(img, 0, 0, 900, 506);
                        }else{
                            var newW = (506 * wImg) / hImg;
                             var newX = 900 - newW;
                            ctx.drawImage(img,  newX / 2, 0, newW, 506);
                        }
                    }else{
                        if(rAsp >= 1.77){
                            ctx.drawImage(img, 0, 0, 1280, 720);
                        }else{
                            var newW = (720 * wImg) / hImg;
                            var newX = 1280 - newW;
                            ctx.drawImage(img, newX / 2, 0, newW, 720);
                        }

                    }

                }


                },
            startPainting(e) {
                if(!this.brushF){return}
            this.painting = true;
            console.log(this.painting)
            this.draw(e)
            },
            finishedPainting() {

                this.cStep++;
                this.cPushArray.push(document.getElementById('canvas').toDataURL());
                console.log(this.cPushArray);

            this.painting = false;
            console.log(this.painting);
            this.ctx.beginPath()
            },
            draw(e) {
            if(!this.painting) return

            this.ctx.lineWidth = 10;
            this.ctx.lineCap ="round";
            this.ctx.strokeStyle = this.color;

            this.ctx.lineTo(e.clientX - 10,e.clientY - 70)
            this.ctx.stroke()

            this.ctx.beginPath()
            this.ctx.moveTo(e.clientX - 10,e.clientY - 70)


            },

            addNumber(e){
                if(this.flag){
                    this.cantMark++;

                    this.ctx.fillStyle = this.color;
                    this.ctx.font = "bold 40px Arial";
                    this.ctx.fillText(this.cantMark, e.clientX - 20,e.clientY-45);
                    //this.flag =false;

                    this.comments.push({id:this.comments.length, value:'', number: this.cantMark});

                }
                if(this.newImg){

                    var ctx = canvas.getContext("2d");
                    var image = document.getElementById('imgInput').files[0];
                    var url = URL.createObjectURL(image);
                    console.log('Imagen Add: ' + url);
                     var img = new Image();
                    img.src = url;

                    img.onload = function() {

                        ctx.drawImage(img, e.clientX,e.clientY, 220 , 122);
                    }
                    this.newImg = false;
                }
            },
            cUndo() {
                if(this.cStep < 0){this.cStep = 0}


                this.cStep--;
                var ant = this.cPushArray[this.cStep];
                console.log('ant: ' + ant);
                this.image = ant;
                this.ctx.clearRect(0,0, this.canvas.width, this.canvas.height);
            },
            cRedo() {
                this.cStep++
                if(this.cStep >= this.cPushArray.length){this.cStep = this.cPushArray.length -1}
                var pos = this.cPushArray[this.cStep];
                console.log('ant: ' + pos);
                this.image = pos;
                this.ctx.clearRect(0,0, this.canvas.width, this.canvas.height);
            },
            oImg(){
                document.getElementById('imgInput').click();
            },
            oPalette(){
                document.getElementById('colorInput').click();
            },
            oBackInp(){
                document.getElementById('backInput').click();
            },
            saveFeedback(){
                console.log('si');
            },
            setFocus(id){
            var btns = document.getElementsByClassName('btnMenu');
            for (var i = 1; i <= 7; i++){ //assemble our info objects
                var bt = document.getElementById('btn'+i);
                bt.style.backgroundColor = '#39d2b4'
            }

            var btn = document.getElementById('btn'+id);
            btn.style.backgroundColor = '#34349e';
        }


        },

        mounted() {
            this.canvas = document.getElementById("canvas");
            this.ctx = canvas.getContext("2d");
            this.menu = document.getElementById('menu');


            var w = window.innerWidth;
            var h = window.innerHeight;

            if(w <= 1400 && w > 1200){
                this.canvas.height = 562; //(window.innerHeight * 90) / 100;
                this.canvas.width =1000; //(window.innerWidth * 75) / 100;
            }else if(w <= 1200){
                 this.canvas.height = 506; //(window.innerHeight * 90) / 100;
                this.canvas.width =900; //(window.innerWidth * 75) / 100;
            }else{
                this.canvas.height = 700; //(window.innerHeight * 90) / 100;
                this.canvas.width =1280; //(window.innerWidth * 75) / 100;
            }


            this.canvas.style.display = 'flex';
            this.canvas.style.float = 'left';


        },





    }
</script>
