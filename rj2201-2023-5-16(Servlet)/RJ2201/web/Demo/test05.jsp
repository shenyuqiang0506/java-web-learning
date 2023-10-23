<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/5/26
  Time: 12:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int n = Integer.parseInt(request.getParameter("n"));
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n; j++) {
            out.print("*");
        }
        out.print("<br>");
    }
%>
</body>
</html>
