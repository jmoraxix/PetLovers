<!DOCTYPE html>
<html>
<head>
	<title>PetLovers</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
	<link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script src="js/ajaxEvents.js" language="JavaScript"></script>
</head>
<body>

	<header>
		<div class="logo">
			<a href="index.php"><img src="img/logo.png" title="PetLovers" alt="PetLovers"/></a>
		</div><!-- end logo -->

		<form action="php/validateUser.php" method="post" id="login_form">
			<input type="text" name="user_name" title="Username" placeholder="Username" autofocus required/>
			<input type="password" name="password" title="Password" placeholder="Password" required/>
			<input type="submit"  name="login" value="Sign into account"/>
			<input type="button"  name="create_account" value="Create account" align="right" onclick="window.location.href='createUser.php'"/>
		</form>

		<div id="menu_icon"></div>
		<nav id="menu_pos">
			<ul>
				<li><a id="menu" href="index.php" class="selected">Home</a></li>
				<li><a id="menu" href="index.php">Find a pet</a></li>
				<li><a id="menu" href="index.php">View pets</a></li>
				<li><a id="menu" href="index.php">Top 10</a></li>
				<li><a id="menu" href="index.php">Chat</a></li>
				<li><a id="menu" href="contact.php">Contact Us</a></li>
			</ul>
		</nav><!-- end navigation menu -->

		<div class="footer clearfix">
			<ul class="social clearfix">
				<li><a href="#" class="fb" data-title="Facebook"></a></li>
				<li><a href="#" class="google" data-title="Google +"></a></li>
			</ul><!-- end social -->

			<div class="rights">
				<p>Copyright © 2015 PetLovers.</p>
			</div><!-- end rights -->
		</div ><!-- end footer -->
	</header><!-- end header -->

	<section class="main clearfix">
		<section class="top">	
			<div class="wrapper content_header clearfix">
				<!-- <h1 class="title">Bienvenido a PetLovers</h1> -->			
			</div>		
		</section><!-- end top -->
		
		<section>
			<section class="main_content" id="content">
				<h1>Bienvenido a PetLovers</h1>
			</section> <!-- end content -->
	
			<section class="side_bar">
				<div>
					<a href="inner.php">
						<img src="img/administrar_usuarios.png" class="media" alt=""/>
					</a>
				</div><!-- end right bar -->
			</section>
		</section>
	</section><!-- end main -->
	
</body>
</html>
