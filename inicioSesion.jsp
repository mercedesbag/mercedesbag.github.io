
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Mercedes Benz</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="subpage">

		<!-- Header -->
			<header id="header">
				<div class="inner">
					<img src="images/logo.png" class="logo"/>
					<nav id="nav">
						<a href="index.html">Inicio</a>
						<a href="registro.html">Registro</a>
                                                <a href="inicioSesion.jsp">Iniciar sesion</a>
						
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
				</div>
			</header>

		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="inner">
					<header class="align-center">
						<h2>Inicio de sesión</h2>
						<p>Por favor ingrese los siguientes datos</p>
					</header>

				<!-- Content -->
					
					<!-- Form -->
				
                                    <hr>
					<form method="post" action="IniciarSesion">
                                           <div class="row uniform">
                                              
                                                <div class="6u 6u$(xsmall)">
                                                <input type="email" name="email" id="email" placeholder="Correo electrónico" />
                                                
						</div>
                                               <div class="6u 6u$(xsmall)">
                                                
                                                <input type="password" name="pass" id="pass" placeholder="Contrasena" />
						</div>
                                                
                                               <!-- Break -->
                                               
                                            
						<div class="12u$">
                                                    <ul class="actions">
                                                    <li><input type="submit" value="Iniciar sesion" /></li>
                                                    <li><input type="reset" value="Limpiar" class="alt" /></li>
                                                    </ul>
						</div>
                                            </div>
					</form>
                                </div>
                        </section> 


									

				

				

		<!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<div class="flex">
						<div class="copyright">
							&copy; Mercedes Benz
						</div>
						<ul class="icons">
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							
						</ul>
					</div>
				</div>
			</footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>
