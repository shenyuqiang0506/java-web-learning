<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	.user{
		cursor:pointer;
	}
	.user:hover{
		color:blue;
	}
</style>
<body>
<ul>
<%
	List<String> users = (List<String>)application.getAttribute("users");
	for(String user : users){
		out.println("<li class='user'>" + user + "</li>");	
	}
	response.setHeader("refresh", "10");
%>
</ul>
</body>
</html>
<script>
	window.onload=function(){
		const lis = document.getElementsByTagName("li");
		for(let li of lis){
			li.onclick = function(){
				parent.document.getElementById('msg').value = "@" + li.innerHTML + " " + parent.document.getElementById('msg').value;
			}
		}
	}
</script>