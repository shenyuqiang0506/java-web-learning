<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%
	if(session.getAttribute("nicheng") == null){
		out.println("请从登录页面进来");
		return;
	}	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
	body{
		width:800px;
		margin:0 auto;
	}
	div.left{
		width:600px;
		float:left;
	}
	div.right{
		width:200px;
		float:right;
	}
	div.say input[name="msg"]{
		width:600px;
	}
</style>
</head>
<body>
	<div>
		昵称：<%=session.getAttribute("nicheng") %>
	</div>
	
	<div class="left">
	<iframe height="500" width="600" src="msgs.jsp" frameborder="0" scrolling='auto'
		style="overflow-x：hidden;overflow-y：auto;"
	></iframe>
	</div>
	<div class="right">
	<iframe height="500" width="200" src="users.jsp" frameborder="0" scrolling='auto'
		style="overflow-x：hidden;overflow-y：auto;"
	></iframe>
	</div>
	
	<div class="say">
	<form action="say.jsp" method="post">
		留言：<input type="text" name="msg" id="msg"><input type="submit" value="发送">
	</form>
	</div>
</body>
</html>