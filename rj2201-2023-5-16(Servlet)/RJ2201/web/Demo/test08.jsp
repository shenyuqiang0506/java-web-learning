<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/5/26
  Time: 13:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  String str = request.getParameter("str");
  str = str.toUpperCase();
  out.print(str);
%>
</body>
</html>
