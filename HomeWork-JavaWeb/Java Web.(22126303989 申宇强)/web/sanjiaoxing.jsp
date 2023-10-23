<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/4/18
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>三角形</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String n = request.getParameter("n");
    int nn = Integer.parseInt(n);
    for (int i = 0; i < nn; i++) {
        for (int j = 0; j < i + 1; j++) {
            out.print("*");
        }
        out.print("<br/>");
    }

%>
</body>
</html>
