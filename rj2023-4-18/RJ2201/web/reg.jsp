<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/4/18
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录界面</title>
</head>
<body>
<form action="regsrv.jsp" method="post">
    <p>
        账号:<input type="text" name="username"/>
    </p>
    <p>
        密码:<input type="password" name="password"/>
    </p>
    <p>
        爱好:
        <input type="checkbox" value="movie" name="aihao">电影
        <input type="checkbox" value="story" name="aihao">小说
    </p>
    <p>
        <input type="submit"/>
        <input type="reset"/>
    </p>

</form>
</body>
</html>
