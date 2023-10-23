<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/2/27
  Time: 22:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>$Title$</title>
</head>
<body>
用户登录界面
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>网站登录</title>
</head>
<body>
<%=request.getAttribute("msg")==null? ""  : request.getAttribute("msg")%>

<form action="./r02" method="post">
  <input type="text" name="user" />
  <input type="text" name="password"/>
  <input type="submit" value="提交" />
</form>
</body>
</html>


