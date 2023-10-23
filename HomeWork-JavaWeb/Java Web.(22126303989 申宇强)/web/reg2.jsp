<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/4/18
  Time: 17:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>接收界面</title>
</head>
<body>
<form>
    <h1>个人注册信息</h1>
</form>
<%
    request.setCharacterEncoding("utf-8");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String[] hobby = request.getParameterValues("hobby");
//    out.print("个人注册信息");
//    out.print("<br/>");
    out.print("用户名:" + username);
    out.print("<br/>");
    out.print("密码为:" + password);
    out.print("<br/>");
    out.print("兴趣为:" + Arrays.toString(hobby));
%>
</body>
</html>
