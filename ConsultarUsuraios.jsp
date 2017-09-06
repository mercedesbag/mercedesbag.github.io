<%-- 
    Document   : ConsultarUsuraios
    Created on : 6/09/2017, 12:43:07 AM
    Author     : HP NOTEBOOK PLUS
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Controladores.Usuario"%>
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
    
    if(u.getId_pri()==2){
        response.sendRedirect("Profesor.jsp");
    }
    else if(u.getId_pri()==3){
        response.sendRedirect("Alumno.jsp");
    }
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
						<a href="index.html">Inicio</a>
                                                <a href="ConsultarUsuraios.jsp">Información de usurios</a>
                                                <a href="Partes.jsp">Números de parte</a>
                                                <a href="Paquetes.jsp">Paquetes</a>
                                                <a href="Concesionarios.html">Auditoria</a>
						<a href="modelos.html">Modelos</a>
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
				</div>
			</header>

		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="inner">
					<header class="align-center">
						<h2>Consulta de Usuarios</h2>
					</header>

                                    
						<!-- Break -->
                                                        <form method="post" action="" id="formpartes">
                                                            <div class="row uniform">
                                                            <div class="4u 12u$(xsmall)">
                                                            <div class="select-wrapper">
							<select name="model" id="category">
                                                            <option value="">- Tipo de Usuario -</option>
                                                            <option value="1">Todos</option>
                                                            <%-- 
                                                            Agregar los privilegios aquí!
                                                            --%>
							</select>
                                                      
                                                                </div>
                                                                </div>
                                                                <div class="4u 12u$(xsmall)">
                                                    <input type="text" name="F" id="FG" value="" placeholder="Criterio de busqueda" /></div>
                                                    <div class="4u 12u$(xsmall)">
                                                    <input type="submit" value="Buscar" class="button special icon fa-search"/>
                                                    </div>
                                                        
                                                    </div>
				<!-- Content --></form>
                                                  
                            
                            <div class="table-wrapper">
									<table>
										<thead>
											<tr>
												<th>ID_user</th>
												<th>Nombre</th>
												<th>Miembro desde</th>
                                                                                                <th>Roll</th>
											</tr>
										</thead>
										<tbody>
                                                                                    <%
                                                                                    ArrayList<Usuario> array = new ArrayList();
                                                                                    array = u.getUsers();
                                                                                    for(Usuario uss : array){
                                                                                    %>
											<tr>
                                                                                            <td><%= uss.getId_usu() %></td>
												<td><%= uss.getNom_per()+" "+uss.getApp_per()+" "+uss.getApm_per() %></td>
												<td><%= uss.getUsu_reg() %></td>
                                                                                                <td><%= uss.getDes_pri() %></td>
											</tr>
                                                                                        <% } %>
											
										</tbody>
										
									</table>
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
							<li><a href="#" class="icon fa-linkedin"><span class="label">linkedIn</span></a></li>
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
