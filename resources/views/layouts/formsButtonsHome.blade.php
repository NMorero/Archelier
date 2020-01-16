<!-- Modal -->
<div class="modal fade" id="modalTasks" tabindex="-1" role="dialog" aria-labelledby="modalTasksLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header bg-info">
          <h5 class="modal-title" id="modalTasksLabel" >New Task</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close" >
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form class="row" id="taskBtnForm">
                <div class="form-group col-12">
                  <label for="TaskBtnMessage">Message</label>
                  <textarea name="TaskBtnMessage" id="TaskBtnMessage" class="form-control" cols="20" rows="3" ></textarea>
                </div>
                <div class="form-group col-4">
                    <label for="TaskBtnStatusSelect">Status</label>
                    <select name="TaskBtnStatusSelect" class="custom-select" id="TaskBtnStatusSelect">
                        <option value="1">Ongoing</option>
                        <option value="2">Ready for Test</option>
                        <option value="3">Done</option>
                    </select>
                </div>
                <div class="form-group col-4">
                    <label for="TaskBtnEndDate">End Date</label>
                    <input type="date" id="TaskBtnEndDate" class="form-control" name="TaskBtnEndDate">
                </div>
                <div class="form-group col-4">
                    <label for="TaskBtnUserSelect">User</label>
                    <select name="TaskBtnUserSelect" id="TaskBtnUserSelect" class="custom-select">

                    </select>
                </div>
                <div class="form-group col-4">
                    <label for="TaskBtnClientSelect">Client</label>
                    <select name="TaskBtnClientSelect" id="TaskBtnClientSelect" class="custom-select">
                        @foreach ($clients as $client)
                            <option value="{{$client->id}}" onclick="getProjectsByClient('Task', {{$client->id}})"> {{$client->person->name}} </option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group col-4" >
                    <label for="TaskBtnProjectSelect">Project</label>
                    <select name="TaskBtnProjectSelect" id="TaskBtnProjectSelect" class="custom-select" >

                    </select>
                </div>

                <div class="form-group col-4" >
                    <label for="TaskBtnViewSelect">View</label>
                    <select name="TaskBtnViewSelect" id="TaskBtnViewSelect" class="custom-select" >

                    </select>
                </div>



              </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary" onclick="saveButton('Task')">Save</button>
        </div>
      </div>
    </div>
  </div>

  {{-- form deliveries --}}
  <div class="modal fade" id="modalDelivery" tabindex="-1" role="dialog" aria-labelledby="modalDeliveryLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header bg-info">
          <h5 class="modal-title" id="modalDeliveryLabel">New Delivery</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form class="row">
                <div class="form-group col-12">
                    <label for="DeliveryBtnMessage">Comment</label>
                    <textarea name="DeliveryBtnMessage" id="DeliveryBtnMessage" class="form-control" cols="20" rows="3" ></textarea>
                </div>
                <div class="form-group col-5">
                    <label for="DeliveryBtnClientSelect">Client</label>
                    <select name="DeliveryBtnClientSelect" id="DeliveryBtnClientSelect" class="custom-select">
                        @foreach ($clients as $client)
                            <option value="{{$client->id}}" onclick="getProjectsByClient('Delivery', {{$client->id}})"> {{$client->person->name}} </option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group col-5">
                    <label for="DeliveryBtnProjectSelect">Project</label>
                    <select name="DeliveryBtnProjectSelect" id="DeliveryBtnProjectSelect" class="custom-select">

                    </select>
                </div>
                <div class="form-group col-5">
                    <label for="DeliveryBtnViewSelect">View</label>
                    <select name="DeliveryBtnViewSelect" id="DeliveryBtnViewSelect" class="custom-select">

                    </select>
                </div>
                <div class="form-group col-5">
                    <label for="DeliveryBtnTemplate">Template</label>
                    <select name="DeliveryBtnTemplate" id="DeliveryBtnTemplate" class="custom-select">
                        <option value="1">Template 1</option>
                        <option value="2">Template 2</option>
                    </select>
                </div>

            </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary" onclick="saveButton('Delivery')">Save changes</button>
        </div>
      </div>
    </div>
  </div>

  {{-- form Feedbacks --}}

  <div class="modal fade" id="modalFeedback" tabindex="-1" role="dialog" aria-labelledby="modalFeedbackLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header bg-info">
          <h5 class="modal-title" id="modalFeedbackLabel">New Feedback</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary" >Save changes</button>
        </div>
      </div>
    </div>
  </div>

  {{-- form events --}}

  <div class="modal fade" id="modalEvent" tabindex="-1" role="dialog" aria-labelledby="modalEventLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header bg-info">
          <h5 class="modal-title" id="modalEventLabel">New Event</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form class="row">
                <div class="form-group col-12">
                    <label for="EventBtnMessage">Message</label>
                    <textarea name="EventBtnMessage" id="EventBtnMessage" class="form-control" cols="20" rows="3" ></textarea>
                </div>
                <div class="form-group col-5">
                    <label for="EventBtnClientSelect">Client</label>
                    <select name="EventBtnClientSelect" id="EventBtnClientSelect" class="custom-select">
                        @foreach ($clients as $client)
                            <option value="{{$client->id}}" onclick="getProjectsByClient('Event', {{$client->id}})"> {{$client->person->name}} </option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group col-5">
                    <label for="EventBtnProjectSelect">Project</label>
                    <select name="EventBtnProjectSelect" id="EventBtnProjectSelect" class="custom-select">

                    </select>
                </div>
                <div class="form-group col-5">
                    <label for="EventBtnViewSelect">View</label>
                    <select name="EventBtnViewSelect" id="EventBtnViewSelect" class="custom-select">

                    </select>
                </div>
                <div class="form-group col-5">
                    <label for="EventBtnEndDate">End date</label>
                    <input type="date" name="EventBtnEndDate" id="EventBtnEndDate" class="form-control">
                </div>

            </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary" onclick="saveButton('Event')">Save changes</button>
        </div>
      </div>
    </div>
  </div>
 {{-- form posts --}}

 <div class="modal fade" id="modalPosts" tabindex="-1" role="dialog" aria-labelledby="modalPostsLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header bg-info">
          <h5 class="modal-title" id="modalPostsLabel">New Post</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form class="row justify-content-between p-2">
                <div class="form-group col-12">
                    <label for="PostBtnTitle">Title</label>
                    <input type="text" name="PostBtnTitle" id="PostBtnTitle" class="form-group">
                </div>
                <div class="form-group col-12">
                    <label for="PostBtnMessage">Message</label>
                    <textarea name="PostBtnMessage" id="PostBtnMessage" class="form-control" cols="20" rows="3" ></textarea>
                </div>
                <div class="form-group col-4">
                    <label for="PostBtnClientSelect">Client</label>
                    <select name="PostBtnClientSelect" id="PostBtnClientSelect" class="custom-select">
                        @foreach ($clients as $client)
                            <option value="{{$client->id}}" onclick="getProjectsByClient('Post', {{$client->id}})"> {{$client->person->name}} </option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group col-4">
                    <label for="PostBtnProjectSelect">Project</label>
                    <select name="PostBtnProjectSelect" id="PostBtnProjectSelect" class="custom-select">

                    </select>
                </div>
                <div class="form-group col-4">
                    <label for="PostBtnViewSelect">View</label>
                    <select name="PostBtnViewSelect" id="PostBtnViewSelect" class="custom-select">

                    </select>
                </div>

                <div class="custom-file col-10 mt-5">

                    <label class="custom-file-label" for="PostBtnFile">Add image</label>
                    <input type="file" class="custom-file-input" id="PostBtnFile">

                </div>
            </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary" onclick="saveButton('Post')">Save changes</button>
        </div>
      </div>
    </div>
  </div>

   {{-- form reminder --}}

 <div class="modal fade" id="modalReminder" tabindex="-1" role="dialog" aria-labelledby="modalReminderLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header bg-info">
          <h5 class="modal-title" id="modalReminderLabel">New Reminder</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form class="row">
                <div class="form-group col-12">
                    <label for="ReminderBtnMessage">Message</label>
                    <textarea name="ReminderBtnMessage" id="ReminderBtnMessage" class="form-control" cols="20" rows="3" ></textarea>
                </div>
                <div class="form-group col-4">
                    <label for="ReminderBtnEndDate">End date</label>
                    <input type="date" id="ReminderBtnEndDate" name="end_date" class="form-control">
                </div>

            </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary" onclick="saveButton('Reminder')">Save changes</button>
        </div>
      </div>
    </div>
  </div>
