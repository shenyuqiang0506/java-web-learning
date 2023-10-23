<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%
	if(session.getAttribute("username")==null){
		out.println("请先登录");
		return;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
后台首页
</body>
</html>