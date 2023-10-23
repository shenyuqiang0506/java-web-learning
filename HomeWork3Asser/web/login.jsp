<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
		<form action="loginsrv.jsp" method="post">
		<p>
			账号：<input type="text" name="username" />
		</p>
		<p>
			密码：<input type="password" name="password" />
		</p>		
		<p>
			<input type="submit" />
			<input type="checkbox" name="remember" value="1">记住我
		</p>
	</form>
</body>
</html>