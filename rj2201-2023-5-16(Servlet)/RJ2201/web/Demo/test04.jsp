<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/5/26
  Time: 12:50
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
    int s = 0;
    for (int i = 1; i <= n; i++) {
        s = s + i;
    }
    out.print(s);
%>
</body>
</html>
