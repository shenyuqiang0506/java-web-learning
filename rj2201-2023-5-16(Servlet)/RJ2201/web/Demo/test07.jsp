<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/5/26
  Time: 13:06
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
    String[] ns = str.split(",");
    int[] nn = new int[ns.length];
    for (int i = 0; i < nn.length; i++) {
        nn[i] = Integer.parseInt(ns[i]);

    }
     int s = 0;
    for (int i = 1; i <= nn.length; i++) {
        s = s + nn[i];
    }
    out.print(s);
%>
</body>
</html>
