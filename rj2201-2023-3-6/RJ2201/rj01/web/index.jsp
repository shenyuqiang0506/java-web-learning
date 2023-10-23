<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/3/6
  Time: 11:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>$Title$</title>
</head>
<body>
<!--通过对应刚刚后端的请求 req  -->
<%=request.getAttribute("msg")==null? ""  : request.getAttribute("msg")%>
<!-- 1?2:3    if(1) {2}else{3} -->
<form action="./r01" method="post">
  <input type="text" name="user" />
  <input type="text" name="password"/>
  <input type="submit" value="提交" />
</form>
</body>
</html>
