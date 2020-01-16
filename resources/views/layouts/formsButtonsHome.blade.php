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
            <form class="row">
                <div class="form-group col-12">
                  <label for="message">Message</label>
                  <textarea name="message" id="message" class="form-control" cols="20" rows="3" ></textarea>
                </div>
                <div class="form-group col-4">
                    <label for="status">Status</label>
                    <select name="status" class="custom-select" id="status">
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
                        <option value="1">Client 1</option>
                        <option value="2">Client 2</option>
                    </select>
                </div>
                <div class="form-group col-4" >
                    <label for="project">Project</label>
                    <select name="project" id="project" class="custom-select" disabled>
                        <option value="1">Project 1</option>
                        <option value="2">Project 2</option>
                    </select>
                </div>

                <div class="form-group col-4" >
                    <label for="view">View</label>
                    <select name="view" id="view" class="custom-select" disabled>
                        <option value="1">View 1</option>
                        <option value="2">View 2</option>
                    </select>
                </div>



              </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save</button>
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
                        <option value="1">Client 1</option>
                        <option value="2">Client 2</option>
                    </select>
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
                    <select name="client" id="client" class="custom-select">
                        <option value="1">Client 1</option>
                        <option value="2">Client 2</option>
                    </select>
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
                        <option value="1">Client 1</option>
                        <option value="2">Client 2</option>
                    </select>
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
                        <option value="1">Client 1</option>
                        <option value="2">Client 2</option>
                    </select>
                </div>
                <div class="form-group col-4">
                    <label for="project">Project</label>
                    <select name="project" id="project" class="custom-select">
                        <option value="1">Project 1</option>
                        <option value="2">Project 2</option>
                    </select>
                </div>
                <div class="form-group col-4">
                    <label for="view">View</label>
                    <select name="view" id="view" class="custom-select">
                        <option value="1">View 1</option>
                        <option value="2">View 2</option>
                    </select>
                </div>
                <div class="form-group col-6 mt-3">
                    <label for="user" class="custom-label">User</label>
                    <select name="user" id="user" class="custom-select">
                        <option value="1">User 1</option>
                        <option value="2">User 2</option>
                    </select>
                </div>
                <div class="custom-file col-5 mt-5">

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
