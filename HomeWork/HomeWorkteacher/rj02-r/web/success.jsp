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
    <title>Title</title>
</head>
<body>
<%=request.getAttribute("msg")==null?"":request.getAttribute("msg")%>
用户信息
</body>
</html>
