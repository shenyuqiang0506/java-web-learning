<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/4/23
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie[] cs = request.getCookies();//从客户端读取cookie
    for (Cookie tt : cs){
        out.println(tt.getName() + "=" + tt.getValue() + "<br>");
    }
%>
</body>
</html>
