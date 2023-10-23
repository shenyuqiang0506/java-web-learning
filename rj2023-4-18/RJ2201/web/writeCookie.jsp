<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/4/23
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie c = new Cookie("name", "申宇强");
    c.setMaxAge(60 * 60 * 24 * 7);//cookie的保存时间
    //c.setMaxAge(-1);
    response.addCookie(c);//写入客户端

%>
</body>
</html>
