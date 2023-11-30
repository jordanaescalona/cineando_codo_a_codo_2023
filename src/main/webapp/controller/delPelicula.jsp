<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%
	String id=request.getParameter("idPeli");
	
	ConexionDB con=new ConexionDB();
	Statement st=con.conectar();
	
	try {
		Integer deleteOk=st.executeUpdate("DELETE FROM pelicula WHERE idPelicula="+id);
		
		if(deleteOk==1) {
			response.sendRedirect("../views/listadoPeliculas.jsp?mensaje=Pelicula%20eliminada%20exitosamente");			
		} else {
			response.sendRedirect("../views/listadoPeliculas.jsp?mensaje=No%20se%20pudo%20eliminar%20la%20pelicula");			
		}
	} catch(Exception e) {
		response.sendRedirect("../views/listadoPeliculas.jsp?mensaje=No%20se%20pudo%20eliminar%20la%20pelicula");			
	}
	


%>