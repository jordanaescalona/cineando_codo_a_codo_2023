<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%
	String user=request.getParameter("usuario");
	String name=request.getParameter("nombre");
	String apellido=request.getParameter("apellido");
	String correo=request.getParameter("correo");
	
	String pass=request.getParameter("pass");
	String repPass=request.getParameter("repass");
	//TODO: comprobar que pass==repPass
	
	ConexionDB con=new ConexionDB();
	Statement st=con.conectar();
	
	if(pass.equals(repPass)){
		try {
			Integer insOk=st.executeUpdate("INSERT INTO usuario (usuario,nombre,apellido,email,password,administrador) VALUES ('"+user+"','"+name+"','"+apellido+"','"+correo+"','"+pass+"',0) ");
			
			if(insOk==1) {
				response.sendRedirect("../index.jsp?mensaje=Usuario%20registrado%20correctamente");			
			} else {
				response.sendRedirect("../index.jsp?mensaje=Error:No%20se%20pudo%20crear%20el%20usuario");	
			}
		} catch(Exception e) {
			response.sendRedirect("../views/index.jsp?mensaje=El%20usuario%20ya%20existe,%20debe%20logearse");
			
		}
	}else{
		response.sendRedirect("../index.jsp?mensaje=Error:No%20se%20pudo%20crear%20el%20usuario,%20las%20contrase%C3%B1as%20no%20coinciden");	
	}
	
	
	


%>