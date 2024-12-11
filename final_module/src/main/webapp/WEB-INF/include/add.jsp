<%--
  Created by IntelliJ IDEA.
  User: 84357
  Date: 12/10/2024
  Time: 9:46 PM
  To change this template use File | Settings | File Templates.
--%>
<div class="modal fade" id="addListModal" tabindex="-1" aria-labelledby="addListModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="addListModalLabel">New List</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="addListForm" action="/view?action=add" method="post" enctype="multipart/form-data">
                    <div class="mb-3">
                        <label for="recipient-name" class="col-form-label">Name List:</label>
                        <input type="text" class="form-control" id="recipient-name" name="eventName" required>
                    </div>
                    <div class="mb-3">
                        <label for="date-time" class="col-form-label">Date-Time:</label>
                        <input type="date" id="date-time" class="form-control" name="eventStart" required>
                    </div>
                    <div class="mb-3">
                        <label for="img-text" class="col-form-label">Image:</label>
                        <input type="file" id="img-text" class="form-control" name="imgEvent" required>
                    </div>
                    <div class="mb-3">
                        <label for="location-text" class="col-form-label">Location:</label>
                        <input type="text" id="location-text" class="form-control" name="location" required>
                    </div>
                    <div class="mb-3">
                        <label for="message-text" class="col-form-label">Description:</label>
                        <textarea class="form-control" id="message-text" name="description"></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="status" class="col-form-label">Status:</label>
                        <select class="form-select" id="status" name="isStatus" required>
                            <option value="1">Start</option>
                            <option value="0">Not Start</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="number-ticket" class="col-form-label">Number of Tickets:</label>
                        <input type="number" id="number-ticket" class="form-control" name="ticketToSell">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary" form="addListForm">Add List</button>
            </div>
        </div>
    </div>
</div>
