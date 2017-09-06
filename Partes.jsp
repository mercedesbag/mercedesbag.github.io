
<%@page import="Controladores.Auto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Controladores.Usuario"%>
<%@page import="Controladores.Refaccion"%>
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
    ArrayList<Refaccion> array = new ArrayList();
    try{
    array = (ArrayList<Refaccion>) sesionOk.getAttribute("Refacciones");
    ref.setNs_ref(request.getParameter("FG"));
    ref.setDes_ref(request.getParameter("kdm"));
    ref.setPVD(Double.parseDouble(request.getParameter("PVD")));
    ref.setPVP(Double.parseDouble(request.getParameter("PVP")));
    array.add(ref);
    sesionOk.setAttribute("Refacciones", array);
    }catch(Exception e){

    }
    
 %>
<html>
	<head>
		<title>Mercedes Benz</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
                <script language="javascript" type="text/javascript" src="Script//Other.js"></script>
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
						<h2>Registro de partes</h2>
						<p>Por favor ingrese los siguientes datos</p>
					</header>

				<!-- Content -->
					
					<!-- Form -->
				
					<form method="post" action="AgregarRef" id="formpartes">
                                           
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
                                                            ArrayList<Auto> array1 = new ArrayList();
                                                            array1 = aut.getAuto();
                                                            for(Auto au:array1){
                                                            %>
                                                            <option value="<%= au.getId_aut() %>"><%= au.getCla_aut() %></option>
                                                            <%
                                                                }
                                                            %>
							</select>
                                                      </div>
                                                    </div> 
                                                  
                                                   <div class="6u 12u$(xsmall)">
                                                    <div class="select-wrapper">
							<select name="anio" id="category">
                                                            <option value="">- Versión -</option>
                                                            <option value="2018">2018</option>
                                                            <option value="2017">2017</option>
                                                            <option value="2016">2016</option>
                                                            <option value="2015">2015</option>
                                                            <option value="2014">2014</option>
                                                            <option value="2013">2013</option>
							</select>
                                                      </div>
                                                    </div>
                                                   </div>
                                                  
                                                        
                                               <br>
                                               <br>
                                               <h3>Refacciones</h3>
                                               <hr>
                                               <div class="row uniform">
						<!-- Break -->
						
                                                <div class="6u 12u$(xsmall)">
                                                    <input type="text" name="FG" id="FG" placeholder="Número de parte" /></div>
                                                    
                                                <div class="6u 12u$(xsmall)">
                                                    <input type="text" name="kmm" id="kdm" placeholder="Nombre" /></div>
                                                <div class="6u 12u$(xsmall)">
                                                    <input type="text" name="PVD" id="PVD" placeholder="PVD" /></div>
                                                <div class="6u 12u$(xsmall)">
                                                <input type="text" name="PVP" id="PVP" placeholder="PVP" /></div>
                                                <div class="12u 12u$(xsmall)">
                                                    <input type="button" name="num " id="cel" value="Agregar" onclick="insTable()"/>
						</div>
						
						</div>
                                                
                                               <br>
                                               <br>
                                               <table id="tableRef">
										<thead>
											<tr>
												<th>Numero</th>
                                                                                                <th>Nombre</th>
                                                                                                <th>PVD</th>
                                                                                                <th>PVP</th>
												<th>Acción</th>
											</tr>
										</thead>
										<tbody>
                                                                                     
										</tbody>
										
									</table>
						<!-- Break -->
						
						<!-- Break -->
						
						<!-- Break -->
						
						<!-- Break -->
						<div class="12u$">
                                                    <ul class="actions">
                                                    <li><input type="submit" value="Registrar"/></li>
                                                    <li><input type="reset" value="Limpiar" class="alt" /></li>
                                                    </ul>
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
