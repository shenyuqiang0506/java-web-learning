<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/4/18
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Object o = request.getAttribute("abc");//获取某个键值
    request.removeAttribute("abc");
    out.print(o);
%>
</body>
</html>
