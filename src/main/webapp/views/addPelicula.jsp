<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" href="../img/1.png">
<jsp:include page="../templates/librerias.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="../templates/menu.jsp"></jsp:include>
	<main class="container my-3">
		<h1 class="my-4">Agregar nueva pelicula</h1> <br> <br>
		<form method="post" action="../controller/procesarPelicula.jsp">
		  <div class="mb-3">
		    <label for="nombre" class="form-label">Nombre de película</label>
		    <input type="text" class="form-control" id="nombre" name="nombre" aria-describedby="nombreHelp" required>
		    <div id="nombreHelp" class="form-text">Recuerde que el nombre de película debe ser único.</div>
		  </div>
		  <div class="mb-3">
		    <label for="genero" class="form-label">Género</label>
		    <select class="form-select" aria-label="Seleccione género" name="genero">
		    <%
			    ConexionDB conn = new ConexionDB();
				Statement st = conn.conectar();
				ResultSet rs = st.executeQuery("SELECT * FROM genero");
				
				while (rs.next()) {					
					out.println("<option value='"+rs.getInt("idGenero")+"'>"+rs.getString("tipo")+"</option>");					
				}		    
		    %> 			 
			</select>
		    
		  </div>
		  <div class="mb-3">
		    <label for="duracion" class="form-label">Duración</label>
		    <input type="text" class="form-control" id="duracion" name="duracion" aria-describedby="duracionHelp" required>
		    <div id="duracionHelp" class="form-text">Ej:195 minutos</div>
		  </div>
		  <div class="mb-3">
		    <label for="director" class="form-label">Director</label>
		    <input type="text" class="form-control" id="director" name="director" required>		    
		  </div>
		  <div class="mb-3">
		    <label for="descripcion" class="form-label">Descripción</label>
		    <textarea class="form-control" aria-label="With textarea" id="descripcion" name="descripcion" required></textarea>	    
		  </div>
		  <div class="mb-3">
		    <label for="imagen" class="form-label">URL Imagen</label>
		    <input type="text" class="form-control" id="imagen" name="imagen" aria-describedby="imagenHelp" required>
		    <div id="imagenHelp" class="form-text">Debe ingresar una URL de imagen. Puede cargar imagen en: <a href="https://imgdb.net/upload" target="__blank">https://imgdb.net/upload</a>
		    <p>Imagen de prueba: https://imgdb.net/storage/uploads/7ca79316c451b48cf5a5835b43386b46c47924a346c26cb690239052157c3c20.png</p>
		    </div>
		  </div>
		  <button type="submit" class="btn btn-primary">Agregar</button>
		</form>
	</main>
</body>
</html>