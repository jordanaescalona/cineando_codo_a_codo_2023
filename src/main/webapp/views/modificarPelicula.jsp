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
		<h1 class="my-4">Modificar pelicula</h1> <br> <br>
		<form method="post" action="../controller/updatePelicula.jsp">
		  	
		  
		  	<%
		  		String idPeli=request.getParameter("idPeli");
		  		System.out.println("Codigo de pelicula:"+idPeli);
			    ConexionDB con1 = new ConexionDB();
				Statement st1 = con1.conectar();
				ResultSet peli = st1.executeQuery("SELECT * FROM pelicula WHERE idPelicula="+idPeli);
								
				
			out.println("<div class='mb-3'>");
				while (peli.next()) {
					out.println("<input type='hidden' name='idPeli' value='"+idPeli+"'>");
					out.println("<label for='nombre' class='form-label'>Nombre de película</label>");
					out.println("<input type='text' class='form-control' id='nombre' name='nombre' aria-describedby='nombreHelp' value='"+peli.getString("nombre")+"'>");
					out.println("<div id='nombreHelp' class='form-text'>Recuerde que el nombre de película debe ser único.</div>");
			out.println("</div>");
			out.println("<div class='mb-3'>");
					out.println("<label for='genero' class='form-label'>Género</label>");
					out.println("<select class='form-select' aria-label='Seleccione género' name='genero'>");
					
						ConexionDB con2 = new ConexionDB();
						Statement st2 = con2.conectar();
						ResultSet generoPeli = st2.executeQuery("SELECT * FROM genero WHERE idGenero="+peli.getInt("genero"));
						generoPeli.next();
						out.println("<option value='"+generoPeli.getInt("idGenero")+"' selected class='text-warning bg-dark'>"+generoPeli.getString("tipo")+"</option>");
							
						ConexionDB con3 = new ConexionDB();
						Statement st3 = con3.conectar();
						ResultSet genero = st3.executeQuery("SELECT * FROM genero");
							while (genero.next()) {					
								out.println("<option value='"+genero.getInt("idGenero")+"'>"+genero.getString("tipo")+"</option>");					
							}	
					out.println("</select>");
			out.println("</div>");
			
			out.println("<div class='mb-3'>");
		    	out.println("<label for='duracion' class='form-label'>Duración</label>");
		    	out.println("<input type='text' class='form-control' id='duracion' name='duracion' aria-describedby='duracionHelp' value='"+peli.getString("duracion")+"'>");
		    	out.println("<div id='duracionHelp' class='form-text'>Ej:195 minutos</div>");
		  	out.println("</div>");
			
		  	out.println("<div class='mb-3'>");
			    out.println("<label for='director' class='form-label'>Director</label>");
			    out.println("<input type='text' class='form-control' id='director' name='director' value='"+peli.getString("director")+"'>");	    
		  	out.println("</div>");
		  	out.println("<div class='mb-3'>");
		    	out.println("<label for='descripcion' class='form-label'>Descripción</label>");
		    	out.println("<textarea class='form-control' aria-label='With textarea' id='descripcion' name='descripcion'>"+peli.getString("descripcion")+"</textarea>");	    
		  	out.println("</div>");
		  	out.println("<div class='mb-3'>");
		  	
		    	out.println("<div class='card mb-3' style='max-width: 540px;'>");
		    	  out.println("<div class='row g-0'>");
		    	    out.println("<div class='col-md-4'>");
		    	      out.println("<img src='"+peli.getString("imagen")+"' class='img-fluid rounded-start' alt='Imagen pelicula:"+peli.getString("nombre")+"'>");
		    	    out.println("</div>");
		    	    out.println("<div class='col-md-8'>");
		    	      out.println("<div class='card-body'>");
		    	        out.println("<h5 class='card-title'>Imagen actual</h5>");
		    	        out.println("<a href='"+peli.getString("imagen")+"' target='__blank' class='card-text'>"+peli.getString("imagen")+" </a>");
		    	      out.println("</div>");		    	      
		    	     out.println("</div>");
		    	    out.println("</div>");
		    	 out.println("</div>");
		    	 out.println("<label for='imagen' class='form-label'>URL Imagen</label>");
		    	out.println("<input type='text' class='form-control' id='imagen' name='imagen' aria-describedby='imagenHelp' value='"+peli.getString("imagen")+"'>");
		    	out.println("<div id='imagenHelp' class='form-text'>Debe ingresar una URL de imagen. Puede cargar imagen en:<a href='https://imgdb.net/upload' target='__blank'>https://imgdb.net/upload</a>");		    
		    		out.println("<p><b>Imagen de prueba:</b> https://imgdb.net/storage/uploads/7ca79316c451b48cf5a5835b43386b46c47924a346c26cb690239052157c3c20.png</p>");
		    	out.println("</div>");
		  	out.println("</div>");
				}		    
		    %> 	    
	
		  <button type="submit" class="btn btn-primary">Guardar cambios</button>
		</form>
	</main>
</body>
</html>