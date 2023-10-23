<%@page pageEncoding="utf-8" %>
	<%
		//response.setContentType("text/html; charset=utf-8");
		String un = request.getParameter("username");
		String pw = request.getParameter("password");
		if(un.equals("admin") && pw.equals("123")){				
			response.sendRedirect("index.jsp");
		}else{
			response.sendRedirect("err.jsp");	
			
		}
	%>
