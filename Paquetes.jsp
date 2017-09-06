<%-- 
    Document   : Paquetes
    Created on : 6/09/2017, 02:40:11 AM
    Author     : HP NOTEBOOK PLUS
--%>

<%@page import="Controladores.Refaccion"%>
<%@page import="Controladores.Usuario"%>
<%@page import="Controladores.Auto"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Usuario u = new Usuario();
    HttpSession sesionOk = request.getSession();
    if (sesionOk.getAttribute("usuario") == null) {
%>
<jsp:forward page="index.jsp">
    <jsp:param name="error" value="Es
               obligatorio identificarse"/>
</jsp:forward>
<%
        response.sendRedirect("index.html");
    } else {
             u = (Usuario) sesionOk.getAttribute("usuario");
    }
    
    if(u.getId_pri() != 1){
        response.sendRedirect("index.html");
    }
    Auto aut = new Auto();
    Refaccion ref = new Refaccion();
 %>
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
						<a href="indexAdmin.html">Inicio</a>
						<!--<a href="elements.html">Elements</a>-->
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
				</div>
			</header>

		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="inner">
					<header class="align-center">
						<h2>Registro de paquetes</h2>
						<p>Por favor ingrese los siguientes datos</p>
					</header>

				<!-- Content -->
					<h3 align="center">Carga Masiva</h3>
                                    <hr>
                                    <form method="post" action="#">
                                           <div class="row uniform">
                                               <div class="1.5u 12u$(xsmall)">
                                                     <label for="ale">Factura de compra: </label>
						</div>
                                                
						<div class="10.5u 12u$(xsmall)">
                                                    <input type="file" name="fc" id="fc" /></div>
                                                    
                                                    <div class="12u$">
                                                    <ul class="actions">
                                                    <li><input type="submit" value="Registrar" /></li>
                                                    <li><input type="reset" value="Limpiar" class="alt" /></li>
                                                    </ul>
						</div>
                                            </div>
					</form>
                                    
                                    <br>
                                    <br>
                                    
                                    <h3 align="center">Carga Individual</h3>
                                    <hr>
					<!-- Form -->
				<h3>Partes</h3>
                                    <hr>
					<form method="post" action="#">
                                           <div class="row uniform">
                                               
						<div class="6u 12u$(xsmall)">
                                                    <input type="text" name="name" id="name" value="" placeholder="Numero de parte" /></div>
                                                    
                                               <div class="6u 12u$(xsmall)">
                                                    <input type="submit" name="num " id="cel" value="Agregar" />
						</div>
						
						</div>
                                        
                                               <br>
                                               <br>
                                               
                                               <table>
										<thead>
											<tr>
												<th>ID Producto</th>
												<th>Nombre</th>
												<th>Acciones</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>458216</td>
												<td>Balata</td>
                                                                                                <td><a href="#">Eliminar</a> </td>
											</tr>
											
											
										</tbody>
										
									</table>
                                               <br>
                                               <br>
                                               <h3>Vehículos</h3>
                                               <hr>
                                               
                                              <div class="row uniform">
                                               
						<div class="6u 12u$(xsmall)">
                                                    <div class="select-wrapper">
							<select name="model" id="category">
                                                            <option value="">- Modelo -</option>
                                                            <%
                                                            ArrayList<Auto> array = new ArrayList();
                                                            array = aut.getAuto();
                                                            for(Auto au:array){
                                                            %>
                                                            <option value="<%= au.getId_aut() %>"><%= au.getCla_aut() %></option>
                                                            <%
                                                                }
                                                            %>
							</select>
                                                      </div>
                                                    </div> 
                                                  
                                                   <div class="4u 12u$(xsmall)">
                                                    <div class="select-wrapper">
							<select name="anio" id="category">
                                                            <option value="">- Versión -</option>
                                                            <option value="1">2018</option>
                                                            <option value="1">2017</option>
                                                            <option value="1">2016</option>
                                                            <option value="1">2015</option>
                                                            <option value="1">2014</option>
                                                            <option value="1">2013</option>
							</select>
                                                      </div>
                                                    </div>
                                               <div class="4u 12u$(xsmall)">
                                                    <input type="submit" name="numv " id="celv" value="Agregar" />
						</div>
						
						</div>
                                        
                                               <br>
                                               <br>
                                               <table>
										<thead>
											<tr>
												<th>Modelo</th>
												<th>Año</th>
												<th>Acciones</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>GLC</td>
												<td>2018</td>
                                                                                                <td><a href="#">Eliminar</a> </td>
											</tr>
											
											
										</tbody>
										
									</table>
                                               <br>
                                               <br>
                                               <h3>Restricciones</h3>
                                               <hr>
                                               <div class="row uniform">
						<!-- Break -->
						
                                                <div class="6u 12u$(xsmall)">
                                                    <input type="text" name="F" id="FG" value="" placeholder="Kilometraje máximo" /></div>
                                                    
                                                <div class="6u 12u$(xsmall)">
                                                    <input type="text" name="km" id="km" value="" placeholder="Tiempo Máximo" /></div>
                                                <div class="12u 12u$(xsmall)">
                                                    <input type="text" name="km" id="km" value="" placeholder="Restriciones Adicionales" /></div>
						
						<!-- Break -->
						
						<!-- Break -->
						
						<!-- Break -->
						
						<!-- Break -->
                                                 <br>
                                                  <br>
                                                   <br>
						<div class="12u$">
                                                    <ul class="actions">
                                                    <li><input type="submit" value="Registrar" /></li>
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
