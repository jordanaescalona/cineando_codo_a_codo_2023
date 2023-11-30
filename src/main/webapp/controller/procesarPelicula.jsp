<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%

	String nombre=request.getParameter("nombre");
	String genero=request.getParameter("genero");
	String duracion=request.getParameter("duracion");
	String director=request.getParameter("director");
	String descripcion=request.getParameter("descripcion");
	String imagen=request.getParameter("imagen");
	
	
	ConexionDB con=new ConexionDB();
	Statement st=con.conectar();
	
	try {
		Integer insOk=st.executeUpdate("INSERT INTO pelicula (nombre,genero,duracion,director,descripcion,imagen) VALUES ('"+nombre+"',"+genero+",'"+duracion+"','"+director+"','"+descripcion+"','"+imagen+"') ");
		
		if(insOk==1) {
			response.sendRedirect("../views/listadoPeliculas.jsp?mensaje=Pelicula%20registrada%20exitosamente");			
		} else {
			response.sendRedirect("../views/addPelicula.jsp?mensaje=Error%20No%20se%20pudo%20agregar%20la%20pelicula");	
		}
	} catch(Exception e) {
		response.sendRedirect("../views/addPelicula.jsp?mensaje=La%20pelicula%20ya%20existe");
		
	}
	


%>