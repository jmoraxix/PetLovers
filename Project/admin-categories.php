<?php include'header.php';?>
<!-- banner -->
<div class="inside-banner">
  <div class="container">
    <span class="pull-right"><a href="index.php">Home</a> / Admin categories</span>
    <h2>Admin categories</h2>
  </div>
</div>
<!-- banner -->
<div class="">
  <div class="container">
    <div class="properties-listing spacer">
      <div class="row">
        <div class="col-lg-3 col-sm-4">
          <div class="search-form">
            <div class="row">
              <div class="col-lg-12">
                <div class="row">
                  <div class="col-lg-8">
                    <h4><span class="glyphicon glyphicon-th"></span>Select a category</h4>
                  </div>
                  <div class="col-lg-4">
                    <button class="btn btn-primary">Create</button>
                  </div>
                </div>
                <div class="row">
                  <div class="col-lg-12">
                    <select class="form-control">
                      <optgroup label="Categories">
                        <optgroup label="Pet">
                          <option>Pet Type</option>
                          <option>Pet breed</option>
                          <option>Color</option>
                          <option>Size</option>
                          <option>Training level</option>
                          <option>Energy level</option>
                        </optgroup>
                        <optgroup label="Health">
                          <option>Health Condition</option>
                          <option>Medication</option>
                          <option>Disease</option>
                        </optgroup>
                        <optgroup label="Other">
                          <option>Parameter</option>
                          <option>Email message</option>
                        </optgroup>
                      </optgroup>
                    </select>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-9 col-sm-8">
          <div class="row">
            <div class="col-lg-12 col-sm-12">
              <div class="col-lg-8"><h4>Option</h4></div>
              <div class="col-lg-3"><h4>Edit</h4></div>
              <div class="col-lg-1"><h4>Delete</h4></div>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-12 col-sm-12">
              <!-- Base structure for listing the categories -->
              <!--
              <div class="category-list">
                <div class="col-lg-8"><p class="text"><?php echo $category_name; ?></p></div>
                <div class="col-lg-3"><a class="btn btn-primary" href="pet-detail.php">Edit</a></div>
                <div class="col-lg-1"><div class="checkbox"><label><input type="checkbox"></label></div></div>
              </div>
              -->
              <div class="category-list">
                <div class="col-lg-8"><p class="text">Red</p></div>
                <div class="col-lg-3"><a class="btn btn-primary" href="pet-detail.php">Edit</a></div>
                <div class="col-lg-1"><div class="checkbox"><label><input type="checkbox"></label></div></div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-12 col-sm-12">
              <div class="deleteButton">
                <ul class="pull-right">
                  <li><button id="delete" class="btn btn-info" data-toggle="modal" onclick="confirmDelete()">Delete</button></li> <!-- Actual login is in footer.php -->
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Script to confirm the delete button -->
  <script>
  function confirmDelete() {
  if (confirm("Are you sure you want to delete the selected options?")) {
  // Do the deletion with php
  $("input:checkbox[name=type]:checked").each(function()
  {
  // add $(this).val() to your array
  });
  } else {
  // Do nothing
  }
  }
  </script>
  <!-- Modal -->
  <div id="editCategory" class="modal fade">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="row">
          <div class="col-sm-6 login">
            <h4>Login</h4>
            <form class="" role="form">
              <div class="form-group">
                <label class="sr-only" for="inputUsername">Category</label>
                <input id="login_username" type="text" class="form-control" id="inputUsername" placeholder="Enter username">
              </div>
              <button id="start_session" type="button" class="btn btn-success">Sign in</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- /.modal -->
  <?php include'footer.php';?>