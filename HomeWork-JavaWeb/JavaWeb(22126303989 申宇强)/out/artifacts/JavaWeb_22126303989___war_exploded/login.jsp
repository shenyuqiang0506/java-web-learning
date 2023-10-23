<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/4/23
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录界面</title>
</head>
<body>
<form action="loginsrv.jsp" method="post">
    <h1>登录界面</h1>
    <p>
        账号: <input type="text" name="username"/>
    </p>
    <p>
        密码: <input type="password" name="password" />
    </p>
    <p>
        <input type="submit" value="提交">
    </p>
</form>
</body>
</html>
