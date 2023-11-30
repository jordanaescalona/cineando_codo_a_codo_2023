<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<html lang="es">
<head>


<jsp:include page="../templates/librerias.jsp"></jsp:include>

<link rel="icon" href="img/1.png">
<!-------------------------------- CSS -------------------------------->
<link rel="stylesheet" href="../css/main.css">
<!-------------------------------- DataTable JS -------------------------------->
<script  src="../js/dataTable.js"></script>


</head>

<body>
	
	<header>		
		<nav class="navbar navbar-expand-lg custom-nav">
			<div class="container-fluid ms-5  justify-content-center">
				<div class="  d-flex align-items-center  justify-content-center">
					<img class="nav-logo d-none d-md-block imgMenu" src="https://i.gifer.com/DCCl.gif" alt="logo"> 
						<a class="navbar-brand text-light ms-3 custom-logo fs-3" href="../index.jsp">Cineando</a>
				</div>
				<div class="collapse navbar-collapse ms-5" id="navbarSupportedContent">
					<ul class="navbar-nav  mb-2 mb-lg-0 anchoNavbar">
						<li class="nav-item align-items-center d-flex  ">
							<div class="ms-5">
								<label class="cmbCiudades">Selecciona un cine</label>
								<div class="selectBlanco">
									<div class="selector" id="uniform-cmbCiudades anchoSelector">
										
										<select
											class=" form-select-sm rounded-3 form-select bg-dark text-light custom-select"
											name="ctl00$cmbCiudades" id="cmbCiudades"
											data-gtm-form-interact-field-id="0">
											<option value="Selecciona una ciudad">Selecciona un
												cine</option>
											<option value="0" clave="palermo">Cineando Palermo</option>
											<option value="1" clave="belgrano">Cineando Belgrano</option>
											<option value="2" clave="recoleta">Cineando Recoleta</option>
											<option value="3" clave="caballito">Cineando
												Caballito</option>
										</select>
									</div>
								</div>
							</div>
						</li>
						<li class="nav-item  align-items-center d-flex"><a
							href="#peliculas" class="btn btn-primary">ver cartelera</a></li>
						<li class="nav-item d-flex ">
							<div class="dropdown">
								<button class="btn btn-primary dropdown-toggle" type="button"
									id="dropdownMenuButton1" data-bs-toggle="dropdown"
									aria-expanded="false">Login</button>
								<ul class="dropdown-menu dropdown-menu-end"
									aria-labelledby="dropdownMenuButton1">
									<li><a class="dropdown-item" href="#modalLogin"
										data-bs-target="#modalLogin" data-bs-toggle="modal">Iniciar
											sesion</a></li>
									<li><a class="dropdown-item" href="#modalSignUp"
										data-bs-target="#modalSignUp" data-bs-toggle="modal">Registrarse</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</nav>

		<!---------------------------------- Modal Iniciar Sesion --------------------------------->
		<div class="modal fade" id="modalLogin" data-bs-backdrop="static"
			tabindex="-1" aria-hidden="true" aria-labelledby="modalTitle">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header shadow-sm">
						<h2>Inicio de sesion</h2>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<form action="../controller/procesarLogin.jsp" method="post">
						<div class="modal-body CTicks">
							<h6 class="mb-1 mt-3">Usuario :</h6>
							<input type="text" name="usuario" id="usuario"
								placeholder="Ingrese su Usuario" class="form-control" required>
							<h6 class="mb-1 mt-3">Contraseña :</h6>
							<input type="password" name="usuarioPass" id="usuarioPass"
								placeholder="Ingrese su contraseña" class="form-control" required>
						</div>
						<div class="modal-footer bg-yellow">
							<ul>
								<button type="submit" class="btn btn-primary bg-info" data-bs-dismiss="modal">Ingresar</button>
							</ul>
						</div>
					</form>
				</div>
			</div>
		</div>
		
		<!---------------------------------- Fin Iniciar Sesion --------------------------------->
		<!---------------------------------- Inicio Modal Registrarse --------------------------------->
		<div class="modal fade" id="modalSignUp" data-bs-backdrop="static"
			tabindex="-1" aria-hidden="true" aria-labelledby="modalTitle">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header text-align shadow-sm">
						<h2>Registro de alta de usuario</h2>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<form action="../controller/addUser.jsp" method="post">
						<div class="modal-body CTicks">
							<div class="row">
								<div class="col-3">
									<h6 class="mb-1 mt-3">Nombre :</h6>
								</div>
								<div class="col-9 mt-2">
									<input type="text" name="nombre" id="nombre"
										placeholder="Ingrese su nombre" class="form-control" required>
								</div>
							</div>

							<div class="row">
								<div class="col-3">
									<h6 class="mb-1 mt-4">Apellido :</h6>
								</div>
								<div class="col-9 mt-3">
									<input type="text" name="apellido" id="apellido"
										placeholder="Ingrese su apellido" class="form-control"
										required>
								</div>
							</div>

							<div class="row">
								<div class="col-3">
									<h6 class="mb-1 mt-4">E-mail :</h6>
								</div>
								<div class="col-9 mt-3">
									<input type="email" name="correo" id="correo"
										placeholder="Ingrese su email" class="form-control" required>
								</div>
							</div>

							<div class="row">
								<div class="col-3">
									<h6 class="mb-1 mt-4">Usuario :</h6>
								</div>
								<div class="col-9 mt-3">
									<input type="text" name="usuario" id="usuario"
										placeholder="Ingrese su Usuario" class="form-control" required>
								</div>
							</div>

							<div class="row">
								<div class="col-3">
									<h6 class="mb-1 mt-4">Contraseña :</h6>
								</div>
								<div class="col-7 mt-3">
									<input type="password" name="pass" id="pass"
										placeholder="Ingrese su contraseña" class="form-control"
										required>
								</div>
								<div class="col-2 mt-3">
									<span class="input-group-text justify-content-center"
										id="basic-addon1"> <a href="#"> <i
											class="bi bi-eye-slash-fill" id="icono"
											onclick="mostrarPass('pass','icono')"></i>
									</a>
									</span>
								</div>
							</div>

							<div class="row">
								<div class="col-3">
									<h6 class="mb-1 mt-4">Contraseña :</h6>
								</div>
								<div class="col-7 mt-3">
									<input type="password" name="repass" id="repass"
										placeholder="Ingrese otra vez su contraseña"
										class="form-control" required>
								</div>
								<div class="col-2 mt-3">
									<span class="input-group-text justify-content-center"
										id="basic-addon2"> <a href="#"> <i
											class="bi bi-eye-slash-fill" id="icono2"
											onclick="mostrarPass('repass','icono2')"></i>
									</a>
									</span>
								</div>
							</div>

						</div>
						<div class="modal-footer bg-yellow">
							<ul>
								<button type="submit" class="btn btn-primary bg-info"
									data-bs-dismiss="modal">Guardar</button>
							</ul>
							<ul>
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">Salir sin guardar</button>
							</ul>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!---------------------------------- Fin Modal Registrarse --------------------------------->

		<nav class="navbar navbar-expand-lg bg-transparent d-none d-lg-block ">
			<div class="container-fluid ">
				<button class="navbar-toggler d-none" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-around"
					id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item"><a
							class="nav-link active text-primary fw-bold" aria-current="page"
							href="#cartelera">cartelera</a></li>
						<li class="nav-item"><a
							class="nav-link text-primary fw-bold " href="#">cines</a></li>
						<li class="nav-item"><a class="nav-link text-primary fw-bold"
							href="#">peliculas</a></li>
						<li class="nav-item"><a
							class="nav-link disabled text-primary fw-bold"
							aria-disabled="true">confitería</a></li>
					</ul>
					<div class="custom-social">
						<svg xmlns="http://www.w3.org/2000/svg" width="27" height="27"
							fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
                            <path
								d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
                        </svg>
						<svg xmlns="http://www.w3.org/2000/svg" width="27" height="27"
							fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                            <path
								d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                        </svg>
						<svg xmlns="http://www.w3.org/2000/svg" width="27" height="27"
							fill="currentColor" class="bi bi-youtube" viewBox="0 0 16 16">
                            <path
								d="M8.051 1.999h.089c.822.003 4.987.033 6.11.335a2.01 2.01 0 0 1 1.415 1.42c.101.38.172.883.22 1.402l.01.104.022.26.008.104c.065.914.073 1.77.074 1.957v.075c-.001.194-.01 1.108-.082 2.06l-.008.105-.009.104c-.05.572-.124 1.14-.235 1.558a2.007 2.007 0 0 1-1.415 1.42c-1.16.312-5.569.334-6.18.335h-.142c-.309 0-1.587-.006-2.927-.052l-.17-.006-.087-.004-.171-.007-.171-.007c-1.11-.049-2.167-.128-2.654-.26a2.007 2.007 0 0 1-1.415-1.419c-.111-.417-.185-.986-.235-1.558L.09 9.82l-.008-.104A31.4 31.4 0 0 1 0 7.68v-.123c.002-.215.01-.958.064-1.778l.007-.103.003-.052.008-.104.022-.26.01-.104c.048-.519.119-1.023.22-1.402a2.007 2.007 0 0 1 1.415-1.42c.487-.13 1.544-.21 2.654-.26l.17-.007.172-.006.086-.003.171-.007A99.788 99.788 0 0 1 7.858 2h.193zM6.4 5.209v4.818l4.157-2.408L6.4 5.209z" />
                        </svg>
						<svg xmlns="http://www.w3.org/2000/svg" width="27" height="27"
							fill="currentColor" class="bi bi-twitter-x" viewBox="0 0 16 16">
                            <path
								d="M12.6.75h2.454l-5.36 6.142L16 15.25h-4.937l-3.867-5.07-4.425 5.07H.316l5.733-6.57L0 .75h5.063l3.495 4.633L12.601.75Zm-.86 13.028h1.36L4.323 2.145H2.865l8.875 11.633Z" />
                        </svg>
					</div>
				</div>
			</div>
		</nav>

	</header>
	<!---------------------------------- Fin Header --------------------------------->
		<!--Inicio Peliculas -->
		<section class="container-fluid" id="peliculas">
			
				<h2 class="my-4">Detalle  de pelicula</h2>
			
			<%
			
			String idPelicula = request.getParameter("idPelicula");
		
			ConexionDB conn = new ConexionDB();
			Statement st = conn.conectar();
			ResultSet rs = st.executeQuery("SELECT * FROM pelicula WHERE idPelicula="+idPelicula);

			out.println("<div class='card mb-4 text-bg-secondary' style='max-width:100%;'>");
			while (rs.next()) {				
				
				out.println("<div class='row g-0'>");
				    out.println("<div class='col-md-4'>");
				      out.println("<img src='"+rs.getString("imagen")+"' class='img-fluid rounded-start' style='heigth:250px;' alt='"+rs.getString("nombre")+"'>");
				    out.println("</div>");
				    out.println("<div class='col-md-8'>");
				    	out.println("<div class='card-body'>");  
				    		out.println("<h2 class='card-title'>"+rs.getString("nombre")+"</h2>");    
				    		out.println("<h5 class='card-text'>"+rs.getString("descripcion")+"</h5>");
				    		out.println("<h5 class='card-text'>Director: "+rs.getString("director")+"</h5>");
				    		out.println("<h5 class='card-text'><small class='text-body-secondary'>Duración: "+rs.getString("duracion")+"</small></h5>");
				    		
				    		ConexionDB con2 = new ConexionDB();
							Statement st2 = conn.conectar();
							ResultSet genero = st2.executeQuery("SELECT * FROM genero WHERE idGenero="+rs.getString("genero"));
							genero.next();
				    		out.println("<h5 class='card-text'><small class='text-body-secondary'>Género: "+genero.getString("tipo")+"</small></h5>"); 
				        out.println("</div>");
				    out.println("</div>");
			    out.println("</div>");
		        out.println("</div>");
				

			}
			out.println("</div>");
			%>

		</section>
		
		<!-- fin peliculas -->
		<!-- Inicio Promociones -->
		<div class="container mt-5">
			<h1 class="fs-4">OFERTAS CYBER MONDAY 2023 - DEL 2 AL 4 DE
				OCTUBRE DE 2023</h1>
		</div>
		<section class="container custom-promociones p-4">
			<div class="row row-cols-1 row-cols-md-3 g-4">
				<div class="col" id="card-1" data-price="10800">
					<div class="card h-100">
						<img
							src="https://cinemarkcl.modyocdn.com/uploads/65ee0ee7-7d33-4ba0-93d7-e82677c99faa/original/combo_dos.jpg"
							class="card-img-top" alt="...">
						<div class="card-body text-center">
							<h5 class="card-title custom-logo">Pack Cyber para dos</h5>
							<p class="card-text ">Válido para el canje de dos entradas 2D
								o 3D en sala tradicional, sala XD, sala Play o sala IMAX, y un
								combo para dos (2 Bebidas Pequeñas (350cc) + 1 Popcorn
								Promocional). (Excluye butacas sala Premier, Palco Premier y
								butacas D-BOX)</p>
							<h4 class="concession-price text-danger">$ 10.800</h4>
							<div class="d-flex justify-content-center">
								<button class="minus">
									<span class="material-symbols-outlined"> remove </span>
								</button>
								<span class="counter">0</span>
								<button class="plus">
									<span class="material-symbols-outlined"> add </span>
								</button>

							</div>
						</div>
					</div>
				</div>
				<div class="col" id="card-2" data-price="5400">
					<div class="card h-100">
						<img
							src="https://cinemarkcl.modyocdn.com/uploads/65ee0ee7-7d33-4ba0-93d7-e82677c99faa/original/combo_dos.jpg"
							class="card-img-top" alt="...">
						<div class="card-body text-center">
							<h5 class="card-title custom-logo">Pack Cyber para uno</h5>
							<p class="card-text ">Válido para el canje de dos entradas 2D
								o 3D en sala tradicional, sala XD, sala Play o sala IMAX, y un
								combo individual (1 Bebidas Pequeñas (350cc) + 1 Popcorn).
								(Excluye sala Premier, Palco Premier y butacas D-BOX)</p>
							<h4 class="concession-price text-danger">$ 5.400</h4>
							<div class="d-flex justify-content-center">
								<button class="minus">
									<span class="material-symbols-outlined"> remove </span>
								</button>
								<span class="counter">0</span>
								<button class="plus">
									<span class="material-symbols-outlined"> add </span>
								</button>
							</div>
						</div>
					</div>
				</div>
				<div class="col" id="card-3" data-price="2700">
					<div class="card h-100">
						<img
							src="https://cinemarkcl.modyocdn.com/uploads/65ee0ee7-7d33-4ba0-93d7-e82677c99faa/original/combo_dos.jpg"
							class="card-img-top" alt="...">
						<div class="card-body text-center">
							<h5 class="card-title custom-logo">Entrada super cyber</h5>
							<p class="card-text ">Válido para el canje de dos entradas 2D
								o 3D en sala tradicional, sala XD, sala Play o sala
								IMAX.(Excluye sala Premier, Palco Premier y butacas D-BOX)</p>
							<h4 class="concession-price mt-5 text-danger">$ 2.700</h4>
							<div class="d-flex justify-content-center">
								<button class="minus">
									<span class="material-symbols-outlined"> remove </span>
								</button>
								<span class="counter">0</span>
								<button class="plus">
									<span class="material-symbols-outlined"> add </span>
								</button>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="row mt-4 ">
				<div class="buy-detail col-xs-12 col-sm-6 col-md-6">
					<ul class="summary-items text-dark " id="summary-list"></ul>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3 total-items  ">
					<p class="text-dark flex-column d-flex align-items-center">
						TOTAL <span class="text-danger fs-2">$ 0</span>
					</p>
				</div>
				<div
					class="col-xs-12 col-sm-3 col-md-3 buy-validator align-items-center justify-content-center d-flex">
					<button type="button" class=" btn btn-secondary  next w-100"
						disabled="disabled" id="btn-pay">Pagar</button>
				</div>
			</div>
		</section>
		<!-- fin promociones -->
	</main>
	<!---------------------------------- Inicio Footer --------------------------------->
	<footer class="custom-footer pb-4">
		<div class="cp-gradient-black-blue  ">
			<div class="container-fluid">
				<div class="navbar-1 text-white py-4">
					<div class="row d-flex justify-content-between mt-3">
						<div class="col-6 col-lg mb-4 mb-lg-0 ">
							<!-- <h5>Cineando</h5> -->
							<img src="./img/1.png" alt="logo" style="height: 12rem;">
							<ul class="list-inline text-left mb-0 ms-5">
								<li><i aria-hidden="true" class="fas fa-angle-right"></i> <a
									href="#" class="btn btn-link p-0 btn-sm text-white">
										Quiénes Somos </a></li>
								<li><i aria-hidden="true" class="fas fa-angle-right"></i> <a
									href="#" class="btn btn-link p-0 btn-sm text-white">
										Recursos Humanos </a></li>
							</ul>
						</div>
						<div class="col-6 col-lg mb-4 mb-lg-0">
							<h5 class="text-right text-lg-left">Información</h5>
							<ul class="list-inline text-right text-lg-left mb-0">
								<li><i aria-hidden="true"
									class="fas fa-angle-right d-none d-md-inline-block"></i> <a
									href="#" class="btn btn-link p-0 btn-sm text-white">
										Festejá tu cumple </a> <i aria-hidden="true"
									class="fas fa-angle-left ml-1 d-inline-block d-md-none"></i></li>
								<li><i aria-hidden="true"
									class="fas fa-angle-right d-none d-md-inline-block"></i> <a
									href="#" class="btn btn-link p-0 btn-sm text-white"> Promos
										Vigentes </a> <i aria-hidden="true"
									class="fas fa-angle-left ml-1 d-inline-block d-md-none"></i></li>
								<li><i aria-hidden="true"
									class="fas fa-angle-right d-none d-md-inline-block"></i> <a
									href="#" class="btn btn-link p-0 btn-sm text-white">
										Calificaciones </a> <i aria-hidden="true"
									class="fas fa-angle-left ml-1 d-inline-block d-md-none"></i></li>
								<li><i aria-hidden="true"
									class="fas fa-angle-right d-none d-md-inline-block"></i> <a
									href="#" class="btn btn-link p-0 btn-sm text-white"> Ventas
										corporativas </a> <i aria-hidden="true"
									class="fas fa-angle-left ml-1 d-inline-block d-md-none"></i></li>
								<li><i aria-hidden="true"
									class="fas fa-angle-right d-none d-md-inline-block"></i> <a
									href="#" class="btn btn-link p-0 btn-sm text-white">
										Contactanos </a> <i aria-hidden="true"
									class="fas fa-angle-left ml-1 d-inline-block d-md-none"></i></li>
								<li><i aria-hidden="true"
									class="fas fa-angle-right d-none d-md-inline-block"></i> <a
									href="#" class="btn btn-link p-0 btn-sm text-white"> Botón
										de arrepentimiento </a> <i aria-hidden="true"
									class="fas fa-angle-left ml-1 d-inline-block d-md-none"></i></li>
							</ul>
						</div>
						<div
							class="col-12 col-sm text-center d-flex flex-column justify-content-center align-items-center">
							<h5>
								<br class="d-none d-lg-block d-xl-none">CineMail
							</h5>
							<a href="#"
								class="btn btn-danger cp-gradient-red-yellow border-0 mb-2 mb-sm-0 mt-mb-2 mr-sm-2 mr-md-0 w-100">
								<i aria-hidden="true" class="far fa-envelope"></i> Sumate <span
								class="d-none d-xl-inline-block">al CineMail</span>
							</a>
						</div>
						<div
							class="col-12 mt-3 mt-sm-0 col-sm text-center d-flex flex-column justify-content-center align-items-center">
							<h5>Historial de Compras</h5>
							<a href="#"
								class="btn btn-danger cp-gradient-red-yellow border-0 mb-2 mb-sm-0 mt-mb-2 mr-sm-2 mr-md-0 w-100">
								<i aria-hidden="true" class="fas fa-shopping-cart"></i> Mis
								Compras
							</a>
						</div>
						<div
							class="col text-center mt-3 mt-sm-0 flex-column justify-content-center align-items-center d-md-flex">
							<h5 class="text-white-30">Complejos y Precios</h5>
							<a href="https://www.cinepolis.com.ar/precios"
								class="btn btn-danger cp-gradient-red-yellow border-0 mb-2 mb-sm-0 mt-mb-2 mr-sm-2 mr-md-0 w-100">
								<i aria-hidden="true" class="fas fa-user-tie"></i> Consulta acá
							</a>
						</div>
					</div>
				</div>
				<div class="navbar-2 pt-3 pb-0">
					<div class="row">
						<div
							class="col-12 col-md d-flex flex-row justify-content-md-start justify-content-center">
							<div class="text-right">
								<a href="#" target="_F960AFIPInfo" class="ml-auto mx-2"> <img
									src="https://static.villagecines.com/assets/DATAWEB.jpg"
									width="38" border="0">
								</a>
							</div>
							<div class="ml-2 d-flex flex-column justify-content-start">
								<a target="_blank" href="#" class="small p-0 text-white"> <small>Libro
										de quejas online</small>
								</a> <a target="_blank" href="#" class="p-0 small text-white"> <small>Formulario
										Menores/Res. 2890</small>
								</a> <a target="_blank" href="#" class="small p-0 text-white"> <small>Dirección
										General de Defensa y Protección al Consumidor.</small>
								</a>
							</div>
						</div>
						<div
							class="col d-none d-md-flex flex-row-reverse align-items-center justify-content-center text-white d-none ">
							<a href="#" target="_blank"> <i aria-hidden="true"
								class="fab fa-twitter fa-2x mx-2 text-white"></i>
							</a> <a href="#" target="_blank"> <i aria-hidden="true"
								class="fab fa-instagram fa-2x mx-2 text-white"></i>
							</a> <a href="#" target="_blank"> <i aria-hidden="true"
								class="fab fa-youtube fa-2x mr-2 text-white"></i>
							</a> <a href="#" target="_blank"> <i aria-hidden="true"
								class="fab fa-facebook fa-2x mr-2 text-white"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
	</footer>
	<!---------------------------------- Fin Footer --------------------------------->

	
	<!-- JS -->
	<script src="../js/main.js"></script>
</body>


</html>