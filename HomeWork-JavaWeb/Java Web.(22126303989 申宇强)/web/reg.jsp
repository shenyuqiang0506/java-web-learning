<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/4/18
  Time: 17:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人注册信息</title>
x`
<body>
<form action="reg2.jsp" method="post">
<h1>个人注册信息</h1>
<p>
    用户名:<input type="text" name="username"/>
</p>
<p>
    密码:<input type="password" name="password"/>
</p>
<p>
    兴趣:
    <input type="checkbox" value="篮球" name="hobby">篮球
    <input type="checkbox" value="排球" name="hobby">排球
    <input type="checkbox" value="乒乓球" name="hobby">乒乓球
</p>
<p>
    <input type="submit"/>
    <input type="reset"/>
</p>
    </form>
</body>
</html>
