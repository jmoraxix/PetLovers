<!DOCTYPE html>
<html>
<head>
	<title>PetLovers User Form</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
	<link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
	<script type="text/javascript" src="js/findInputs.js"></script>
</head>


<body>
	<header>
		<div class="logo">
			<a href="index.php"><img src="img/logo.png" title="PetLovers" alt="PetLovers"/></a>
		</div><!-- end logo -->

		<div id="menu_icon" style="margin-top: 60px;"></div>
		<nav>
			<ul>
				<li><a href="index.php">Home</a></li>
				<li><a href="index.php">Find a pet</a></li>
				<li><a href="index.php">View Pets</a></li>
				<li><a href="index.php">Top 10</a></li>
				<li><a href="index.php">Chat</a></li>
				<li><a href="contact.php">Contact Us</a></li>
			</ul>
		</nav><!-- end navigation menu -->

		<div class="footer clearfix">
			<ul class="social clearfix">
				<li><a href="#" class="fb" data-title="Facebook"></a></li>
				<li><a href="#" class="google" data-title="Google +"></a></li>
			</ul><!-- end social -->

			<div class="rights">
				<p>Copyright © 2015 PetLovers.</p>
			</div>end rights
		</div ><!-- end footer -->
	</header><!-- end header -->
	
	
	<section class="main clearfix">

		<section class="top">	
			<div class="wrapper content_header clearfix">
				<h1 class="title">Acount creation</h1>
			</div>		
		</section><!-- end top -->

		<section class="wrapper">
			<div class="content">
				<form id= "form_info" class="registration" method="POST">
					<em>All fields are required</em>
					<ul class="registration">
						<section class="wrapper">
							<li><label>Username:</label></li>
							<li><input type="text" name="username" title="Username" maxlength="12"/></li>
							<li><label>Password:</label></li>
							<li><input type="text" name="password" title="Password" maxlength="16"/></li>
							<li><label>Confirm Password:</label></li>
							<li><input type="text" name="password" title="Confirm Password" maxlength="16"/></li>
							<li><label>Email:</label></li>
							<li><input type="text" name="email" title="Email"/></li>
						</section>
						<section class="wrapper" style="position:relative;">
							<li><label>First Name:</label></li>
							<li><input type="text" name="name" title="Name"/></li>
							<li><label>First Last Name:</label></li>
							<li><input type="text" name="first_last_name" title="First Last Name"/></li>
							<li><label>Second Last Name:</label></li>
							<li><input type="text" name="second_last_name" title="Second Last Name"/></li>
							<li><input type="button" name="create_user" class="send_info" title="Create Account" value="Create Account"></input></li>
						</section>
					</ul>
				</form>
			</div><!-- end content -->
		</section>
	</section><!-- end main -->

</body>
</html>