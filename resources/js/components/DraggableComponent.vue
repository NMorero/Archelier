<template>
    <div>
        <div v-if="modal" id="boxModalProject" @click="handleClickModal">
            <div id="modalProject">
                <div id="headerModalProject" >
                    <span id="tituloModalProject">{{projectActual[0].project_name}} // {{projectActual[0].client}}</span>
                    <span id="leaderModalProject">{{projectActual[0].leader.name}}  {{projectActual[0].leader.lastname}}</span>
                </div>
                <div id="boxImgs">
                    <div id="boxImgModalProject">
                        <img class="img-d-block" :src="projectActual[0].thumbnail" alt="">
                    </div>
                    <div id="boxViewsModalProject">
                        <div class="viewModalProject" v-for="view in projectActual[0].views" :key="view.id">
                            <img class="imgViewModalProjects" :src="view.img" alt="">
                            <span class="titleViewModalProjects">{{view.title}}</span>
                        </div>
                        <span class="add" @click="modalView = true">+</span>
                    </div>
                </div>

                <div id="boxTaskModalProject">
                    <div class="listTaskModalProject" v-for="devs in projectActual[0].devs.devsLists" :key="devs.id">
                        <span class="titleListTaskModalProject" >{{devs.name}}</span>
                        <div class="tasksModalProject" v-for="devsMod in devs.modules" :key="devsMod.id">
                            <span class="titleTaskModalProject">{{devsMod.module}}</span>
                            <span class="devTaskModalProject">{{devsMod.developer}}</span>
                        </div>
                        <span class="add" @click="openModalAddTask(devs.name)">+</span>
                    </div>
                    <span class="addList" @click="listModal = true">+</span>
                </div>
            </div>
        </div>

        <div id="addViewModal" v-if="modalView" @click="handleClickModalView">
            <div id="modalView">
                <div id="headerModalAddView">
                    <span>Add view</span>
                </div>
                <form @submit="submitFormView" enctype="multipart/form-data" id="formAddView">

                    <input type="text" name="viewTitle" id="inputViewTitle" placeholder="View title" v-model="viewTitle">

                    <label class="file-select">
                        <!-- We can't use a normal button element here, as it would become the target of the label. -->
                        <div class="select-button">
                        <!-- Display the filename if a file has been selected. -->
                        <span v-if="value" id="valueImgSelected">{{value}}</span>
                        <span v-else>Select File</span>
                        </div>
                        <!-- Now, the file input that we hide. -->
                        <input type="file" id="inputViewFile" @change="handleFileChange"/>
                    </label>
                    <input type="submit" id="btnSaveView" value="Save" />
                </form>
            </div>
        </div>
        <div id="addTaskModal" v-if="taskModal" @click="handleClickModalTask">
            <div id="modalTask">
                <div id="headerModalAddTask">
                    <span>Add Task</span>
                </div>
                <form action="" @submit="submitFormTask">
                    <input type="text" name="taskList" class="inputTaskTitle" placeholder="Task list" v-model="taskList">
                <input type="text" name="taskTitle" class="inputTaskTitle" placeholder="Task title" v-model="taskTitle">
                <select name="taskDeveloper" id="taskDeveloper" class="inputTaskTitle" v-model="taskDeveloper">
                    <option value="" selected hidden>Developer</option>
                    <option :value="deve.id" v-for="deve in developers" :key="deve.id">{{deve.user}}</option>
                </select>
                <input type="submit" id="btnSaveTask" value="Save" />
                </form>
            </div>
        </div>



        <div id="addListModal" v-if="listModal">
            <div id="addList">
                <input type="text" placeholder="List title" v-model="newListTask">
                <button id="btnAddList" @click="addList">Add</button>
            </div>
        </div>

        <div id="box1" class="boxProject">
            <h3 class>NEXT</h3>
            <draggable class="list-group" :list="list1" group="people" @change="log1" :disabled="!enabled">
                <div class="list-group-item" v-for="element in list1" :key="element.id  ">
                    <span class="clientText">{{element.client}}</span>
                    <span class="projectText">Apodo test</span>
                    <div class="boxInfoProjects" @click="handleClickProject(element.id)">
                        <div class="boxImg1">
                            <img class="imgVie" v-for="view in element.views" :key="view.id" :src="view.img" alt />
                        </div>
                        <div class="boxImg2">
                            <img :src="element.thumbnail" alt class="imgDash"/>
                        </div>
                        <div class="taskLabelProject" v-for="dev in element.devs.devs" :key="dev.module">
                            <span class="label1">Model stage</span>
                            <span class="label2">{{dev.module}}</span>
                            <span class="label3">{{dev.developer}}</span>
                        </div>
                    </div>
                </div>
            </draggable>
        </div>
        <div id="vl1"></div>

        <div id="box2" class="boxProject">
            <h3 class>ON GOING</h3>
            <draggable class="list-group" :list="list2" group="people" @change="log2" :disabled="!enabled">
                <div class="list-group-item" v-for="element in list2" :key="element.id">
                    <span class="clientText">{{element.client}}</span>
                    <span class="projectText">Apodo test</span>
                    <div class="boxInfoProjects" @click="handleClickProject(element.id)">
                        <div class="boxImg1">
                            <img class="imgVie" v-for="view in element.views" :key="view.id" :src="view.img" alt />
                        </div>
                        <div class="boxImg2">
                            <img :src="element.thumbnail" alt class="imgDash" />
                        </div>
                        <div class="taskLabelProject" v-for="dev in element.devs.devs" :key="dev.module">
                            <span class="label1">Model stage</span>
                            <span class="label2">{{dev.module}}</span>
                            <span class="label3">{{dev.developer}}</span>
                        </div>
                    </div>
                </div>
            </draggable>
        </div>
        <div id="vl2"></div>
        <div id="box3" class="boxProject">
            <h3 class>AT CLIENT</h3>
            <draggable class="list-group" :list="list3" group="people" @change="log3" :disabled="!enabled">
                <div class="list-group-item" v-for="element in list3" :key="element.id">
                    <span class="clientText">{{element.client}}</span>
                    <span class="projectText">Apodo test</span>
                    <div class="boxInfoProjects" @click="handleClickProject(element.id)">
                        <div class="boxImg1">
                            <img class="imgVie" v-for="view in element.views" :key="view.id" :src="view.img" alt />
                        </div>
                        <div class="boxImg2">
                            <img :src="element.thumbnail" alt class="imgDash" />
                        </div>
                        <div class="taskLabelProject" v-for="dev in element.devs.devs" :key="dev.module">
                            <span class="label1">Model stage</span>
                            <span class="label2">{{dev.module}}</span>
                            <span class="label3">{{dev.developer}}</span>
                        </div>
                    </div>
                </div>
            </draggable>
        </div>
        <div id="vl3"></div>
        <div id="box4" class="boxProject">
            <h3 class>SUSPENDED</h3>
            <draggable class="list-group" :list="list4" group="people" @change="log4" :disabled="!enabled">
                <div class="list-group-item" v-for="element in list4" :key="element.id  ">
                    <span class="clientText">{{element.client}}</span>
                    <span class="projectText">Apodo test</span>
                    <div class="boxInfoProjects" @click="handleClickProject(element.id)">
                        <div class="boxImg1">
                            <img class="imgVie" v-for="view in element.views" :key="view.id" :src="view.img" alt />
                        </div>
                        <div class="boxImg2">
                            <img :src="element.thumbnail" alt class="imgDash" />
                        </div>
                        <div class="taskLabelProject" v-for="dev in element.devs.devs" :key="dev.module">
                            <span class="label1">Model stage</span>
                            <span class="label2">{{dev.module}}</span>
                            <span class="label3">{{dev.developer}}</span>
                        </div>
                    </div>
                </div>
            </draggable>
        </div>
        <div id="vl4"></div>
        <div id="box5" class="boxProject">
            <h3 class>FINISHED</h3>
            <draggable class="list-group" :list="list5" group="people" @change="log5" :disabled="!enabled">
                <div class="list-group-item" v-for="element in list5" :key="element.name">
                    <span class="clientText">{{element.client}}</span>
                    <span class="projectText">Apodo test</span>
                    <div class="boxInfoProjects" @click="handleClickProject(element.id)">
                        <div class="boxImg1">
                            <img class="imgVie" v-for="view in element.views" :key="view.id" :src="view.img" alt />
                        </div>
                        <div class="boxImg2">
                            <img :src="element.thumbnail" alt class="imgDash" />
                        </div>
                        <div class="taskLabelProject" v-for="dev in element.devs.devs" :key="dev.module">
                            <span class="label1">Model stage</span>
                            <span class="label2">{{dev.module}}</span>
                            <span class="label3">{{dev.developer}}</span>
                        </div>
                    </div>
                </div>
            </draggable>
        </div>
    </div>
</template>
<script>
import draggable from "vuedraggable";

export default {
  order: 1,
  components: {
    draggable

  },
  data() {
    return {
        viewUploaded: '',
        viewIdCounter: 1881818,
        viewTitle: '',
        taskModal: false,
        taskTitle: '',
        taskList: '',
        taskDeveloper: '',
        taskDeveloperAc: '',
        listModal: false,
        newListTask: '',
        value: '',
        modal: false,
        modalView: false,
        file: '',
        projects: [],
        projectActual: [],
        list1: [],
        list2: [],
        list3: [],
        list4: [],
        list5: [],
        enabled: false,
        username: '',
        lastname: '',
        developers: [],
    };
  },
  methods: {
    addList: function(){
        console.log(this.projectActual[0]['devs']['devsLists']);
        this.viewIdCounter = this.viewIdCounter + 1;
        this.projectActual[0]['devs']['devsLists'][this.newListTask] = {
            name: this.newListTask,
            id: this.viewIdCounter,
            modules: []
        };
        console.log(this.projectActual[0]['devs']['devsLists']);
        this.listModal = false;
    },
    handleClickModal: function(event){
        console.log(event.target)
        if(event.target.id=='boxModalProject'){
            this.modal = false;
        }
    },
    handleClickModalView: function(event){
        console.log(event.target)
        if(event.target.id=='addViewModal'){
            this.modalView = false;
        }
    },
    handleClickModalTask: function (){
        if(event.target.id=='addTaskModal'){
            this.taskModal = false;
            this.taskDeveloper = '';
        }
    },
    handleFileChange(e) {
      // Whenever the file changes, emit the 'input' event with the file data.
      this.value = e.target.files[0].name;
      this.file = e.target.files[0];
    },
    handleClickProject(id){
        console.log(id);
        this.projectActual = this.projects.filter((obj) => {
            return obj.id == id;
        });
        console.log(this.projectActual);
        this.modal = true;
    },
    openModalAddTask(name){
        this.taskList = name;
        this.taskModal = true;
    },
    submitFormTask(e) {
        e.preventDefault();
        let self = this;
        const config = {
            headers: {
                'content-type': 'multipart/form-data',
                'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').content,
            }
        }
        let formData = new FormData();
        formData.append('id', self.projectActual[0].id);
        formData.append('list', self.taskList);
        formData.append('title', self.taskTitle);
        formData.append('developer', self.taskDeveloper);
        console.log(self.projectActual[0]['devs']['devsLists'][self.taskList].modules);
        self.taskDeveloperAc = self.developers.filter((obj) => {
            return obj.id == self.taskDeveloper;
        });
        console.log(self.taskDeveloperAc[0]);
        self.taskDeveloperAc = self.taskDeveloperAc[0].user.substring(0,2);
        axios.post('/Admin/Projects/Module/Add', formData, config)
            .then(function (response) {
                self.viewIdCounter = self.viewIdCounter + 1;

                self.projectActual[0]['devs']['devsLists'][self.taskList].modules.push({developer:self.taskDeveloperAc, id:self.viewIdCounter, list_name:self.taskList,module:self.taskTitle });
                self.taskList = '';
                self.taskTitle = '';
                self.taskDeveloper = '';
                self.taskModal = false;
            })
            .catch(function (error) {
                self.output = error;
                alert(error);
            });
    },
    submitFormView(e) {
        e.preventDefault();
        let currentObj = this;
        const config = {
            headers: {
                'content-type': 'multipart/form-data',
                'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').content,
            }
        }
        // form data
        let formData = new FormData();
        formData.append('image', this.file);
        var f = document.getElementById( 'inputViewFile' );
        var reader = new FileReader();
        reader.readAsDataURL(f.files[0]);
        reader.onload = function(e) {
            currentObj.viewUploaded = e.target.result;
        };
        // send upload request
        axios.post('/Admin/Projects/addView/'+ currentObj.projectActual[0].id, formData, config)
            .then(function (response) {
                currentObj.success = response.data.success;
                currentObj.value = "";
                currentObj.viewTitle = "";
                currentObj.modalView = false;
                currentObj.viewIdCounter = currentObj.viewIdCounter + 1;
                currentObj.projectActual[0].views.push({id: currentObj.viewIdCounter, img: currentObj.viewUploaded, title: currentObj.viewTitle});
            })
            .catch(function (error) {
                currentObj.output = error;
                alert('There was an error while uploading view');
            });
    },
    add: function() {
      this.list.push({ name: "Juan" });
    },
    replace: function() {
      this.list = [{ name: "Edgard" }];
    },
    clone: function(el) {
      return {
        name: el.name + " cloned"
      };
    },
    log1: function(evt) {
      if (evt.added) {
        window.console.log("To dragg 1: ", evt.added.element.id);
        axios.get('/Admin/Projects/Update/' + evt.added.element.id + '/1')
        .catch(function (error) {
            console.log(error);
        })
      }
    },
    log2: function(evt) {
      if (evt.added) {
        window.console.log("To dragg 2: ", evt.added.element.id);
        axios.get('/Admin/Projects/Update/' + evt.added.element.id + '/2')
        .catch(function (error) {
            console.log(error);
        })
      }
    },
    log3: function(evt) {
      if (evt.added) {
        window.console.log("To dragg 3: ", evt.added.element.id);
        axios.get('/Admin/Projects/Update/' + evt.added.element.id + '/3')
        .catch(function (error) {
            console.log(error);
        })
      }
    },
    log4: function(evt) {
      if (evt.added) {
        window.console.log("To dragg 4: ", evt.added.element.id);
        axios.get('/Admin/Projects/Update/' + evt.added.element.id + '/4')
        .catch(function (error) {
            console.log(error);
        })
      }
    },
    log5: function(evt) {
      if (evt.added) {
        window.console.log("To dragg 5  : ", evt.added.element.id);
        axios.get('/Admin/Projects/Update/' + evt.added.element.id + '/5')
        .catch(function (error) {
            console.log(error);
        })
      }
    },

  },
    mounted(){
        let self = this;
        axios.get('/Admin/Projects/get')
            .then(function (response) {
                self.projects = response.data[1];
                self.list1 = response.data[0][0];
                self.list2 = response.data[0][1];
                self.list3 = response.data[0][2];
                self.list4 = response.data[0][3];
                self.list5 = response.data[0][4];
            })
            .catch(function (error) {
                console.log(error);
            });
        axios.get('/Admin/UserRole')
            .then(function (response) {
                if(response.data[0] == 'admin' || response.data[0] == 'PRleader'){
                    self.enabled =true;
                }
                self.username = response.data[1];
                self.lastname = response.data[2];
            })
            .catch(function (error) {
                console.log(error);
            })
        axios.get('/Admin/Projects/Developers/get')
            .then(function (response) {
                console.log(response.data);
                self.developers = response.data;
            })
            .catch(function (error) {
                console.log(error);
            });
    },

};
</script>
<style scoped>
.addList{
    position: relative;
    top:-93%;
    cursor: pointer;
    color: #62dfc2;
    font-size: 2rem;
}
select { width: 400px; text-align-last:center; }
#headerModalAddTask{
    width: 100%;
    height: 20%;
    border-bottom: 1px solid darkgray;
    text-align: center;
    font-size: 2rem;
    margin-bottom: 10%;
}
#headerModalAddView{
    width: 100%;
    height: 20%;
    border-bottom: 1px solid darkgray;
    text-align: center;
    font-size: 2rem;
    margin-bottom: 10%;
}
#formAddView{
    padding-top: 10%;
    text-align: center;
}
#inputViewTitle{
    border: 0px;
    text-align: center;
    border-bottom: 1px solid darkgray;
    height: 8%;
    margin-left: 10%;
    margin-right: 10%;
    margin-bottom: 10%;
    width: 70%;
}
#btnSaveTask{
    margin-left: 15%;
    margin-right: 15%;
    width: 70%;
    padding: 2%;
    border-radius: 10px;
    background-color: #62dfc2;
    color: #fff;
    border: #62dfc2;
}
.inputTaskTitle{
    border: 0px;
    text-align: center;
    border-bottom: 1px solid darkgray;
    height: 8%;
    margin-left: 15%;
    margin-right: 15%;
    margin-bottom: 10%;
    width: 70%;
}
#formAddView span{
    font-size: 1.5rem;
}
label{
    margin-left: 10%;
    margin-right: 10%;
    width: 70%;
}
#btnSaveView{
    margin-left: 10%;
    margin-right: 10%;
    width: 70%;
    padding: 2%;
    border-radius: 10px;
    background-color: #62dfc2;
    color: #fff;
    border: #62dfc2;
}
.file-select > .select-button {
    padding: 0.5rem;
    border:3px solid #62dfc2;
    color: #62dfc2;
    display: inline-block;
    width: 100%;
    border-radius: .3rem;
    text-align: center;
}

/* Don't forget to hide the original file input! */
.file-select > input[type="file"] {
  display: none;
}
</style>
