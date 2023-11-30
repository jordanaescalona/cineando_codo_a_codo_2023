<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cineando</title>

<link rel="icon" href="../img/1.png">

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital@1&display=swap"
	rel="stylesheet">

<!-- Google Icons -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
<!-- CSS -->
<link rel="stylesheet" href="../css/main.css">

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">

<!-- jquery Confirm -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="  crossorigin="anonymous"></script>
<link rel="stylesheet" href="plugins/jqueryConfirm/jquery-confirm.min.css">
<script defer src="plugins/jqueryConfirm/jquery-confirm.min.js"></script>

</head>
<body>


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
		
		<!-- JS -->
	<script src="../js/main.js"></script>
	<script src="../js/registro.js"></script>
	<!-- Bootstrap -->

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
		integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
		crossorigin="anonymous"></script>
</body>
</html>