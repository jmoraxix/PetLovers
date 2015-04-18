<?php include'header.php';?>
<!-- banner -->
<script src="javascript/findInputs.js"></script>
<div class="inside-banner">
  <div class="container">
    <span class="pull-right"><a href="#">Home</a> / Edit User</span>
    <h2>Edit User</h2>
  </div>
</div>
<!-- banner -->
<div class="container">
  <div class="spacer">
    <div class="row register">
      <div class="col-lg-6">
        <input id="user_username" type="text" class="form-control" placeholder="Username" name="form_name" maxlength="12" value="">
        <input id="user_password" type="password" class="form-control" placeholder="Password" name="form_phone" maxlength="16" value="">
        <input id="user_re_password" type="password" class="form-control" placeholder="Confirm Password" name="form_phone" maxlength="16" value="">
        <legend>Which type of user would you want to be?</legend>
          <input type="checkbox" name="animal" value="" style="height: 20px">
          <label>Adopter</label> <br />
          <input type="checkbox" name="animal" value="" style="height: 20px">
          <label>Rescuer</label> <br />
      </div>

      <div class="col-lg-6">
        <input id="user_first_name" type="text" class="form-control" placeholder="First Name" name="form_name" maxlength="20" value="">
        <input id="user_first_lastname" type="text" class="form-control" placeholder="First Last Name" name="form_name" maxlength="16" value="">
        <input id="user_second_lastname" type="text" class="form-control" placeholder="Second Last Name" name="form_name" maxlength="16" value="">
        <input id="user_id" type="text" class="form-control" placeholder="Identification" name="form_name" maxlength="20" value="">
        <input id="user_email" type="text" class="form-control" placeholder="Enter Email" name="form_email" maxlength="30" value="">
        <input id="user_phone" type="text" class="form-control" placeholder="Enter Phone Number" name="form_email" maxlength="8" value="">
        
      </div>
    </div>
    <div class="row register">
      <div class="pull-right">
        <button id="Submit_User" type="button" class="btn btn-success" name="Submit">Register</button>
      </div>
    </div>
  </div>
</div>
<?php include'footer.php';?>