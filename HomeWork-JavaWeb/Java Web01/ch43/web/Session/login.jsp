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
    <title>登录界面</title>
</head>
<body>
<form action="loginsrv.jsp" method="post">
    <h1>用户登录界面</h1>
    <p>
        账号:<input type="text" name="username" id="username"/>
    </p>
    <p>
        密码:<input type="password" name="password" id="password"/>
    </p>
    <p>
        <input type="submit" value="登录" id="submit">
        <input type="reset" value="重置">
    </p>
</form>
</body>
</html>
