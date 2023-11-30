<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%
	String idPeli=request.getParameter("idPeli");
	String nombre=request.getParameter("nombre");
	String genero=request.getParameter("genero");
	String duracion=request.getParameter("duracion");
	String director=request.getParameter("director");
	String descripcion=request.getParameter("descripcion");
	String imagen=request.getParameter("imagen");
	
	System.out.println("id peli:"+idPeli+" /n nombre:"+nombre+"/n genero:"+genero+"/n duracion:"+duracion+"/n director:"+director+"/n descripcion:"+descripcion+"/n imagen:"+imagen);
	
	ConexionDB con=new ConexionDB();
	Statement st=con.conectar();
	
	try {
		Integer updateOk=st.executeUpdate("UPDATE pelicula SET nombre='"+nombre+"',genero="+genero+",duracion='"+duracion+"',director='"+director+"',descripcion='"+descripcion+"',imagen='"+imagen+"' WHERE idPelicula="+idPeli);
		
		if(updateOk==1) {
			System.out.println("Si se pudo");
			response.sendRedirect("../views/listadoPeliculas.jsp?mensaje=Pelicula%20modificada%20exitosamente");			
		} else {
			System.out.println("No se pudo");
			response.sendRedirect("../views/listadoPeliculas.jsp?mensaje=Error%20No%20se%20pudo%20modificar%20la%20pelicula");	
		}
	} catch(Exception e) {
		System.out.println("Error no se pudo");
		response.sendRedirect("../views/listadoPeliculas.jsp?mensaje=La%20pelicula%20ya%20existe");
		
	}
	


%>