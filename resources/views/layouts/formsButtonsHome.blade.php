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
                  <label for="message">Message</label>
                  <textarea name="message" id="message" class="form-control" cols="20" rows="3" ></textarea>
                </div>
                <div class="form-group col-4">
                    <label for="taskBtnStatusSelect">Status</label>
                    <select name="taskBtnStatusSelect" class="custom-select" id="taskBtnStatusSelect">
                        <option value="1">Ongoing</option>
                        <option value="2">Ready for Test</option>
                        <option value="3">Done</option>
                    </select>
                </div>
                <div class="form-group col-4">
                    <label for="end_date">End Date</label>
                    <input type="date" id="end_date" class="form-control" name="end_date">
                </div>
                <div class="form-group col-4">
                    <label for="taskBtnUserSelect">User</label>
                    <select name="taskBtnUserSelect" id="taskBtnUserSelect" class="custom-select">

                    </select>
                </div>
                <div class="form-group col-4">
                    <label for="client">Client</label>
                    <select name="client" id="client" class="custom-select">
                        @foreach ($clients as $client)
                            <option value="{{$client->id}}" onclick="getProjectsByClient('task', {{$client->id}})"> {{$client->person->name}} </option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group col-4" >
                    <label for="taskBtnProjectSelect">Project</label>
                    <select name="taskBtnProjectSelect" id="taskBtnProjectSelect" class="custom-select" >

                    </select>
                </div>

                <div class="form-group col-4" >
                    <label for="taskBtnViewSelect">View</label>
                    <select name="taskBtnViewSelect" id="taskBtnViewSelect" class="custom-select" >

                    </select>
                </div>



              </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary" onclick="taskBtnSave()">Save</button>
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
                    <label for="comment">Comment</label>
                    <textarea name="comment" id="comment" class="form-control" cols="20" rows="3" ></textarea>
                </div>
                <div class="form-group col-5">
                    <label for="client">Client</label>
                    <select name="client" id="client" class="custom-select">
                        @foreach ($clients as $client)
                            <option value="{{$client->id}}" onclick="getProjectsByClient('delivery', {{$client->id}})"> {{$client->person->name}} </option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group col-5">
                    <label for="deliveryBtnProjectSelect">Project</label>
                    <select name="deliveryBtnProjectSelect" id="deliveryBtnProjectSelect" class="custom-select">

                    </select>
                </div>
                <div class="form-group col-5">
                    <label for="deliveryBtnViewSelect">View</label>
                    <select name="deliveryBtnViewSelect" id="deliveryBtnViewSelect" class="custom-select">

                    </select>
                </div>
                <div class="form-group col-5">
                    <label for="template">Template</label>
                    <select name="template" id="template" class="custom-select">
                        <option value="1">Template 1</option>
                        <option value="2">Template 2</option>
                    </select>
                </div>

            </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
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
            <form class="row">
                <div class="form-group col-12">
                    <label for="message">Message</label>
                    <textarea name="message" id="message" class="form-control" cols="20" rows="3" ></textarea>
                </div>
                <div class="form-group col-5">
                    <label for="client">Client</label>

                </div>
                <div class="form-group col-5">
                    <label for="project">Project</label>
                    <select name="project" id="project" class="custom-select">
                        <option value="1">Project 1</option>
                        <option value="2">Project 2</option>
                    </select>
                </div>
                <div class="form-group col-5">
                    <label for="view">View</label>
                    <select name="view" id="view" class="custom-select">
                        <option value="1">View 1</option>
                        <option value="2">View 2</option>
                    </select>
                </div>
                <div class="form-group col-5">
                    <label for="developer">Developer</label>
                    <select name="developer" id="developer" class="custom-select">
                        <option value="1">Developer 1</option>
                        <option value="2">Developer 2</option>
                    </select>
                </div>

            </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
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
                    <label for="message">Message</label>
                    <textarea name="message" id="message" class="form-control" cols="20" rows="3" ></textarea>
                </div>
                <div class="form-group col-5">
                    <label for="client">Client</label>
                    <select name="client" id="client" class="custom-select">
                        @foreach ($clients as $client)
                            <option value="{{$client->id}}" onclick="getProjectsByClient('event', {{$client->id}})"> {{$client->person->name}} </option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group col-5">
                    <label for="eventBtnProjectSelect">Project</label>
                    <select name="eventBtnProjectSelect" id="eventBtnProjectSelect" class="custom-select">

                    </select>
                </div>
                <div class="form-group col-5">
                    <label for="eventBtnViewSelect">View</label>
                    <select name="eventBtnViewSelect" id="eventBtnViewSelect" class="custom-select">

                    </select>
                </div>
                <div class="form-group col-5">
                    <label for="end_date">End date</label>
                    <input type="date" name="end_date" id="end_date" class="form-control">
                </div>

            </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
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
                    <label for="title">Title</label>
                    <input type="text" name="title" id="title" class="form-group">
                </div>
                <div class="form-group col-12">
                    <label for="message">Message</label>
                    <textarea name="message" id="message" class="form-control" cols="20" rows="3" ></textarea>
                </div>
                <div class="form-group col-4">
                    <label for="client">Client</label>
                    <select name="client" id="client" class="custom-select">
                        @foreach ($clients as $client)
                            <option value="{{$client->id}}" onclick="getProjectsByClient('post', {{$client->id}})"> {{$client->person->name}} </option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group col-4">
                    <label for="postBtnProjectSelect">Project</label>
                    <select name="postBtnProjectSelect" id="postBtnProjectSelect" class="custom-select">

                    </select>
                </div>
                <div class="form-group col-4">
                    <label for="postBtnViewSelect">View</label>
                    <select name="postBtnViewSelect" id="postBtnViewSelect" class="custom-select">

                    </select>
                </div>

                <div class="custom-file col-10 mt-5">

                    <label class="custom-file-label" for="customFile">Add image</label>
                    <input type="file" class="custom-file-input" id="customFile">

                </div>
            </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
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
                    <label for="message">Message</label>
                    <textarea name="message" id="message" class="form-control" cols="20" rows="3" ></textarea>
                </div>
                <div class="form-group col-4">
                    <label for="end_date">End date</label>
                    <input type="date" id="end_date" name="end_date" class="form-control">
                </div>

            </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
        </div>
      </div>
    </div>
  </div>
