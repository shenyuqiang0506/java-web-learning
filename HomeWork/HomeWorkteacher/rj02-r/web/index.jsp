<%--
  Created by IntelliJ IDEA.
  User: Shen
  Date: 2023/3/1/
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>用户登录</title>
  </head>
  <body>
  <p>用户登录页面</p>
  <%=request.getAttribute("msg")==null? ""  : request.getAttribute("msg")%>
  <form action="./r02" method="post">
    <input type="text" name="user" />
    <input type="text" name="password"/>
    <input type="submit" value="提交" />
  </form>
  </body>
</html>
