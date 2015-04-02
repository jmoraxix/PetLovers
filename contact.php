<!DOCTYPE html>
<html lang="es">
<head>
	<title>PetLovers</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
	<link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
    <script type="text/javascript" src="js/jquery.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
    <script type="text/javascript" src="js/map.js"></script>
    <script type="text/javascript" src="js/main.js"></script>

</head>
<body>

	<header>
		<div class="logo">
			<a href="index.php"><img src="img/logo.png" title="PetLovers" alt="PetLovers"/></a>
		</div><!-- end logo -->

		<form>
			<input type="text" name="username" title="Username" placeholder="Username" autofocus required/>
			<input type="password" name="password" title="Password" placeholder="Password" required/>
			<input type="submit"  name="login" value="Sign into account"/>
			<input type="button"  name="create_account" value="Create account" align="right" onclick="window.location.href='createUser.php'"/>
		</form>

		<div id="menu_icon"></div>
		<nav>
			<ul>
				<li><a href="index.php">Home</a></li>
				<li><a href="index.php">Find a pet</a></li>
				<li><a href="index.php">View pets</a></li>
				<li><a href="index.php">Top 10</a></li>
				<li><a href="index.php">Chat</a></li>
				<li><a href="contact.php" class="selected">Contact US</a></li>
			</ul>
		</nav><!-- end navigation menu -->

		<div class="footer clearfix">
			<ul class="social clearfix">
				<li><a href="#" class="fb" data-title="Facebook"></a></li>
				<li><a href="#" class="google" data-title="Google +"></a></li>
			</ul><!-- end social -->

			<div class="rights">
				<p>Copyright © 2015 PetLovers.</p>
				<!--<div>Icons made by <a href="http://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="http://www.flaticon.com" title="Flaticon">www.flaticon.com</a>             is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0">CC BY 3.0</a></div>-->
			</div><!-- end rights -->
		</div ><!-- end footer -->
	</header><!-- end header -->

	<section class="main clearfix" id="map">
	</section><!-- end main/map -->
	
</body>
</html>