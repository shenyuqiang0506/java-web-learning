<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/4/23
  Time: 15:28
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
    if (username.equals("admin") && password.equals("123456")) {
        session.setAttribute("username",username);
        Cookie cookie1 = new Cookie("username", username);
        Cookie cookie2 = new Cookie("password", password);
        cookie1.setMaxAge(60 * 60 * 24 * 30);
        cookie2.setMaxAge(60 * 60 * 24 * 30);
        response.addCookie(cookie1);
        response.addCookie(cookie2);
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("error.jsp");
    }
%>
</body>
</html>
