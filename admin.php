<!DOCTYPE html>
<?php
        session_start();
        if(!isset($_SESSION['name']))
        {
                header("location: index.php");
        }
        $name=$_SESSION['name'];
?>
<html>
<head>
	<title>PetLovers</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
	<link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <!-- <script src="js/ajaxEvents.js" language="JavaScript"></script> -->
</head>
<body>
	<header>
		<div class="logo">
			<a href="index.php"><img src="img/logo.png" title="PetLovers" alt="PetLovers"/></a>
		</div><!-- end logo -->
		
		<div id="menu_icon"></div>
		<nav>
			<ul>
				<li><a href="index.php" class="selected">Home</a></li>
				<li><a href="index.php">Find a pet</a></li>
				<li><a href="index.php">View pets</a></li>
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
			</div><!-- end rights -->
		</div ><!-- end footer -->
	</header><!-- end header -->
	
	<section class="main clearfix">
		<section class="top">	
			<div class="wrapper content_header clearfix">
				<h1 class="title">Bienvenido <em><?php echo $name;?></em> 
					<form action="php/logout.php" method="post" id="log_out">
						<input type="submit"  name="log_out" value="Log Out"/>
					</form>
				</h1>
			</div>		
		</section><!-- end top -->

		<section class="wrapper">
			<div class="content">
				<div class="work">
					<a href="inner.php">
						<img src="img/administrar_usuarios.png" class="media" alt=""/>
						<div class="caption">
							<div class="work_title">
								<h1>User administration</h1>
							</div>
						</div>
					</a>
				</div>

				<div class="work">
					<a href="inner.php">
						<img src="img/administrar_mascotas.png" class="media" alt=""/>
						<div class="caption">
							<div class="work_title">
								<h1>Pet administration</h1>
							</div>
						</div>
					</a>
				</div>

				<div class="work">
					<a href="inner.php">
						<img src="img/administrar_categorias.png" class="media" alt=""/>
						<div class="caption">
							<div class="work_title">
								<h1>Category administration</h1>
							</div>
						</div>
					</a>
				</div>

				<div class="work">
					<a href="inner.php">
						<img src="img/ver_formularios.png" class="media" alt=""/>
						<div class="caption">

							<div class="work_title">
								<h1>View forms</h1>
							</div>
						</div>
					</a>
				</div>

				<div class="work">
					<a href="inner.php">
						<img src="img/ver_lista_negra.png" class="media" alt=""/>
						<div class="caption">
							<div class="work_title">
								<h1>Black list</h1>
							</div>
						</div>
					</a>
				</div>

				<div class="work">
					<a href="inner.php">
						<img src="img/correo.png" class="media" alt=""/>
						<div class="caption">
							<div class="work_title">
								<h1>View e-mails</h1>
							</div>
						</div>
					</a>
				</div>
			</div><!-- end content -->
		</section>	

		<section class="wrapper">
			<div class="side_bar">
				<div class="work">
					<a href="inner.php">
						<img src="img/administrar_usuarios.png" class="media" alt=""/>
						<div class="caption">
							<div class="work_title">
								<h1>User administration</h1>
							</div>
						</div>
					</a>
				</div>
			</div><!-- end content -->
		</section>
	</section><!-- end main -->
	
</body>
</html>
