<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/4/23
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录界面</title>
</head>
<body>
<%
    String username = "";
    String password = "";
    Cookie[] cs = request.getCookies();//从客户端读取cookie
    if (cs != null) {
        for (Cookie tt : cs) {
            if (tt.getName().equals("username")) {
                username = tt.getValue();
            } else if (tt.getName().equals("password")) {
                password = tt.getValue();
            }
        }
    }
%>
<form action="loginsrv.jsp" method="post">
    <h1>登录界面</h1>
    <p>
        账号:<input type="text" name="username" value="<%=username%>"/>
    </p>
    <p>
        密码:<input type="password" name="password" value="<%=password%>"/>
    </p>
    <p>
        <input type="submit" value="登录">
    </p>
</form>
</body>
</html>
