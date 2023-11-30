<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<html lang="es">
<head>

<jsp:include page="../templates/librerias.jsp"></jsp:include>

<link rel="icon" href="../img/1.png">
<!-------------------------------- CSS -------------------------------->
<link rel="stylesheet" href="../css/main.css">
<!-------------------------------- DataTable JS -------------------------------->
<script  src="../js/dataTable.js"></script>
<!-- JS -->
<script src="../js/main.js"></script>


</head>

<body class="bg-light bg-gradient">	
	<jsp:include page="../templates/menu.jsp"></jsp:include>
	<main class="container my-4">
		<h1 class="my-4">PELICULAS</h1> <br>
		<a href="./addPelicula.jsp" class="btn btn-primary">Agregar nueva pelicula</a><br><br>
		
		<% 
			String mensaje=request.getParameter("mensaje");
			
			if(mensaje!=null){
				
					out.println("<div class='alert alert-warning alert-dismissible fade show' role='alert'>");
					out.println(mensaje);
					out.println("<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>");
					out.println("</div>");
				
				
			}	
		%>	  
		<table class="table table-striped table-hover table-borderer tablaResponsive"
					id="dataTable"  cellspacing="0" data-order='[[ 0, "desc" ]]'>
					<thead>
						<th>Id</th>
						<th>Nombre</th>
						<th>Imagen</th>
						<th class="all">Acciones</th>
					</thead>
					<tbody>

						<%
						ConexionDB conn = new ConexionDB();
						Statement st = conn.conectar();
						ResultSet rs = st.executeQuery("SELECT * FROM pelicula");

						while (rs.next()) {
							out.println("<tr>");

								out.println("<td>");
								out.println(rs.getInt("idPelicula"));
								out.println("</td>");

								out.println("<td>");
								out.println(rs.getString("nombre"));
								out.println("</td>");

								out.println("<td>");
								out.println("<img src='"+rs.getString("imagen")+"' class='img-peli img-fluid' alt='Imagen pelicula'>");
								out.println("</td>");

								out.println("<td>");	
								
								out.println("<a href='../views/modificarPelicula.jsp?idPeli="+rs.getInt("idPelicula")+"'  title='Editar' class='btn btn-warning btn-rounded'><i class='bi bi-pencil-square'></i></a>");
								out.println("<a href='#' data-bs-toggle='modal' data-bs-target='#deleteModal' idDel='"+rs.getInt("idPelicula")+"' nombrePelicula='"+rs.getString("nombre")+"' title='Eliminar' class='btn btn-danger btn-rounded'><i class='bi bi-trash3'></i></a>");					
								out.println("</td>");

							out.println("</tr>");

						}
						%>

					</tbody>
				</table>
	
	</main>	
	<!-- Delete modal -->
		<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h1 class="modal-title fs-5" id="exampleModalLabel">Eliminar pelicula</h1>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        <form action="../controller/delPelicula.jsp" method="post">
		          <div class="mb-3 text-center">
		            <label for="recipient-name" class="col-form-label">¿Desea eliminar la pelicula <b><span id="nombreP"></span></b>?</label>
		            	
		            <input type="hidden" class="form-control" id="recipient-name" name="idPeli">
		          </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
			        <button type="submit" class="btn btn-primary">Eliminar</button>
			      </div>
		        </form>
		      </div>
		    </div>
		  </div>
		</div>

<script src="../js/eliminarPeliculaModal.js">

</script>
</body>
</html>