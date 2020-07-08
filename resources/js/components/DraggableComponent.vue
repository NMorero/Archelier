<template>
  <div class="row justify-content-between">
    <div class="boxProject border-10">
      <h3 class="text-center">NEXT</h3>
        <draggable class="list-group p-2" :list="list1" group="people" @change="log1">
            <div
            class="list-group-item border-none"
            v-for="element in list1"
            :key="element.name"
            >
            <span class="spanProjectBox1">Bart</span> <span class=" spanProjectBox text-right">RVA Nice Port</span>
                <div class="dragBox borderProjectBox p-1">
                    <div class="boxViewsProjects">
                        <div class="imgs float-left mt-1">
                            <img src="/resorces/newImg.png" alt="" width="47%">
                            <img src="/resorces/newImg.png" alt="" width="47%">
                            <img src="/resorces/newImg.png" alt="" width="47%" class="mt-2">
                            <img src="/resorces/newImg.png" alt="" width="47%" class="mt-2">
                        </div>
                        <div class="imgFirst float-right mt-1">
                            <img src="/resorces/newImg.png" alt="" width="100%">
                        </div>
                    </div>
                    <div class="infoProjectLabel">

                    </div>
                </div>
            </div>
        </draggable>
    </div>

    <div class="boxProject border-10">
      <h3 class="text-center">ON GOING</h3>
      <draggable class="list-group p-2 " :list="list2" group="people" @change="log2">
        <div
          class="list-group-item dragBox border border-rounded"
          v-for="(element, index) in list2"
          :key="element.name"
        >
          {{ element.name }} {{ index }}
        </div>
      </draggable>
    </div>

    <div class="boxProject border-10">
      <h3 class="text-center">AT CLIENT</h3>
      <draggable class="list-group p-2 " :list="list3" group="people" @change="log3">
        <div
          class="list-group-item dragBox border border-rounded"
          v-for="(element, index) in list3"
          :key="element.name"
        >
          {{ element.name }} {{ index }}
        </div>
      </draggable>
    </div>

    <div class="boxProject border-10">
      <h3 class="text-center">SUSPENDED</h3>
      <draggable class="list-group p-2 " :list="list4" group="people" @change="log4">
        <div
          class="list-group-item dragBox border border-rounded"
          v-for="(element, index) in list4"
          :key="element.name"
        >
          {{ element.name }} {{ index }}
        </div>
      </draggable>
    </div>

    <div class="boxProject">
      <h3 class="text-center">FINISHED</h3>
      <draggable class="list-group p-2 " :list="list5" group="people" @change="log5">
        <div
          class="list-group-item dragBox border border-rounded"
          v-for="(element, index) in list5"
          :key="element.name"
        >
          {{ element.name }} {{ index }}
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
      list1: [
        { name: "John", id: 1 },
        { name: "Joao", id: 2 },
        { name: "Jean", id: 3 },
        { name: "Gerard", id: 4 }
      ],
      list2: [
        { name: "Juan", id: 5 },
        { name: "Edgard", id: 6 },
        { name: "Johnson", id: 7 }
      ],
      list3: [
        { name: "Juan", id: 5 },
        { name: "Edgard", id: 6 },
        { name: "Johnson", id: 7 }
      ],
      list4: [
        { name: "Juan", id: 5 },
        { name: "Edgard", id: 6 },
        { name: "Johnson", id: 7 }
      ],
      list5: [
        { name: "Juan", id: 5 },
        { name: "Edgard", id: 6 },
        { name: "Johnson", id: 7 }
      ]
    };
  },
  methods: {
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
        if(evt.added){
            window.console.log('To dragg 1: ', evt.added.element.id);
        }
    },
    log2: function(evt) {
        if(evt.added){
            window.console.log('To dragg 2: ',evt.added.element.id);
        }
    }
  }
};
</script>
