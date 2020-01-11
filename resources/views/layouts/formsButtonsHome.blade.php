<!-- Modal -->
<div class="modal fade" id="modalTasks" tabindex="-1" role="dialog" aria-labelledby="modalTasksLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="modalTasksLabel">New Task</h5>
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
                    <label for="status">Status</label>
                    <select name="status" class="form-control" id="status">
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
                    <label for="user">User</label>
                    <select name="user" id="user" class="form-control">
                        <option value="1">User 1</option>
                        <option value="2">User 2</option>
                    </select>
                </div>
                <div class="form-group col-4">
                    <label for="client">Client</label>
                    <select name="client" id="client" class="form-control">
                        <option value="1">Client 1</option>
                        <option value="2">Client 2</option>
                    </select>
                </div>
                <div class="form-group col-4" >
                    <label for="project">Project</label>
                    <select name="project" id="project" class="form-control" disabled>
                        <option value="1">Project 1</option>
                        <option value="2">Project 2</option>
                    </select>
                </div>

                <div class="form-group col-4" >
                    <label for="view">View</label>
                    <select name="view" id="view" class="form-control" disabled>
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

  <div class="modal fade" id="modal2" tabindex="-1" role="dialog" aria-labelledby="modal2Label" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="modal2Label">Modal 2</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          ...
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
        </div>
      </div>
    </div>
  </div>

