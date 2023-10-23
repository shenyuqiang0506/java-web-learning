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
<%
    request.setCharacterEncoding("utf-8");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String[] xingqu = request.getParameterValues("xingqu");

%>
<form>
    <h2>个人注册信息</h2>
    用户名:<%=username%>;
    密码:<%=password%>;
    <%
        out.print("兴趣:");

        for (String i: xingqu){
            out.print( i + " ");
        }
    %>
</form>
</body>
</html>
