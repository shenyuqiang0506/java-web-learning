<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/4/23
  Time: 22:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<form action="loginsrv2.jsp" method="post">
    <h1>用户登录界面</h1>
    <p>
        账号:<input type="text" name="username" value="<%=username%>">
    </p>
    <p>
        密码:<input type="password" name="password" value="<%=password%>">
    </p>
    <p>
        <input type="submit" value="登录">
        记住我:<input type="checkbox" name="remember">
    </p>

</form>
</body>
</html>
