<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/4/23
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录后台</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if (username.equals("申宇强") && password.equals("22126303989")) {
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("error.jsp");
    }

%>
</body>
</html>
