<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/5/18
  Time: 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生登录</title>
</head>
<body>
<form action="loginsrv.do" method="post">
    <h1>学生登录</h1>
    <p>
        学号:<input type="text" name="id" placeholder="输入学号"/>
    </p>
    <p>
        密码:<input type="password" name="password" placeholder="输入密码"/>
    </p>
    <p>
        <input type="submit" value="登录">
    </p>
</form>
</body>
</html>
