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
    <title>Title</title>
</head>
<body>
<%
    session.removeAttribute("username");//移除
    //session.invalidate();//清空
    response.sendRedirect("login.jsp");
%>
</body>
</html>
