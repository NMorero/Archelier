<template>
    <div class="main">
        <canvas @mousedown="startPainting" @mouseup="finishedPainting" @mousemove="draw"  id="canvas" v-bind:style="{ 'background-image': 'url(' + image + ')', 'background-repeat': 'no-repeat', 'background-size': '100% 100%' }" @click="addNumber">

        </canvas>

        <div id="menu">
            <h3>Tools</h3>
            <input type="file" name="" id="imgInput" @change="newImg = true" hidden>
            <input type="file" name="" id="backInput" @change="onFileChange" hidden>
            <input type="color" v-model="color" id="colorInput" hidden>

            <button @click="oBackInp"><i class="fas fa-image"></i></button>
            <button @click="oPalette"><i class="fas fa-palette"></i></button>
            <button @click="flag = true"><i class="far fa-flag"></i></button>
            <button @click="cUndo"><i class="fas fa-undo-alt"></i></button>
            <button @click="cRedo"><i class="fas fa-redo-alt"></i></button>
            <button @click="oImg"><i class="far fa-file-image"></i></button>


                <div id="commentBox">
                    <h3>Comments</h3>
                    <div v-for="comm in comments" :key="comments.id" id="comentBox" class="input">
                        {{comm.id}}  <input type="text" value="comm.value" v-model="comm.value" >
                    </div>
                <button id="btnAddCom" @click="addComment">Add comment</button>

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
            comments: [


            ],
            image: null,
            cantMark: 0,
            flag: false,
            color: 'black',
            cStep: 0,
            cPushArray: new Array,
            newImg: false,
            };
        },

        methods: {
            onFileChange(e) {
                const file = e.target.files[0];
                this.image = URL.createObjectURL(file);
                var ctx = canvas.getContext("2d");


                var img = new Image();
                img.src = this.image;
                img.onload = function() {
                    ctx.drawImage(img, 0, 0, 1280, 720);
                }


                },
            startPainting(e) {
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
                    this.ctx.fillText(this.cantMark, e.clientX - 10,e.clientY - 70);
                    this.flag =false;
                }
                if(this.newImg){

                    var ctx = canvas.getContext("2d");
                    var image = document.getElementById('imgInput').files[0];
                    var url = URL.createObjectURL(image);
                    console.log('Imagen Add: ' + url);
                     var img = new Image();
                    img.src = url;

                    img.onload = function() {

                        ctx.drawImage(img, e.clientX - 10,e.clientY - 70, 220 , 122);
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
            addComment(){
                this.comments.push({id:this.comments.length, value:''});
            }


        },

        mounted() {
            this.canvas = document.getElementById("canvas");
            this.ctx = canvas.getContext("2d");
            this.menu = document.getElementById('menu');

            // Resize canvas
             this.canvas.height = 720; //(window.innerHeight * 90) / 100;
            this.canvas.width =1280; //(window.innerWidth * 75) / 100;
            this.canvas.style.display = 'flex';
            this.canvas.style.float = 'left';


        },




    }
</script>
