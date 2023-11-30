<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%
	String user=request.getParameter("user");
	String pass=request.getParameter("usuarioPass");

	ConexionDB con=new ConexionDB();
	Statement st=con.conectar();
	ResultSet rs=st.executeQuery("SELECT * FROM usuario WHERE usuario='"+user+"' and password='"+pass+"'");
	
	if(rs.next()){
		if(rs.getInt("administrador")== 1){
			response.sendRedirect("../views/listadoPeliculas.jsp?mensaje=Bienvenido%20"+rs.getString("usuario"));
		}else{
			response.sendRedirect("../views/inicio.jsp?id="+rs.getInt("idUsuario"));
		}
	}else{
		response.sendRedirect("../index.jsp?mensaje=Datos%20incorrectos,%20ingreselos%20denuevo!");
	}

%>