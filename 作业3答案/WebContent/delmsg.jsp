<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, entities.Message"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String t=request.getParameter("id");
	String myName = (String)session.getAttribute("nicheng");
	if(t!=null){
		int id = Integer.parseInt(t);
		List<Message> msgs = (List<Message>)application.getAttribute("msgs");
		for(Message msg : msgs){
			if(msg.getId() == id && msg.getUser().equals(myName)){
				msgs.remove(msg);
				break;
			}
		}
	}
	response.sendRedirect("msgs.jsp");
%>
</body>
</html>