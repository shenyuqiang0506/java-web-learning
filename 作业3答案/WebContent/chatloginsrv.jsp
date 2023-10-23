<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*"%>
<%
	request.setCharacterEncoding("utf-8");
	String nicheng = request.getParameter("nicheng");
	
	List<String> users = (List<String>)application.getAttribute("users");
	boolean b = false;
	if(users!=null){
		for(String user : users){
			if(user.equals(nicheng)){
				b = true;
				break;
			}
		}
	}
	
	if(b){
		out.println("<script>alert('昵称已经被占用，请换一个再试试'); history.go(-1);</script>");
	}else{
		session.setAttribute("nicheng", nicheng);
		if(users==null)
			users = new ArrayList<String>();
		users.add(nicheng);
		application.setAttribute("users", users);
		response.sendRedirect("chat.jsp");
	}
%>