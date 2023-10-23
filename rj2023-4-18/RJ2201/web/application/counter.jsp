<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/4/25
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Object o = application.getAttribute("times");
    int times = 0;
    if (o != null) {
        times = (Integer) o;
        }
    times++;
    application.setAttribute("times", times);
%>
当前网页被访问<%=times%>次
</body>
</html>
