<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/4/26
  Time: 14:11
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
    if (username.equals("admin") && password.equals("123")) {
        session.setAttribute("username", username);
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("error.jsp");
    }
%>
</body>
</html>
