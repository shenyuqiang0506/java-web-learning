<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/4/23
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (session.getAttribute("username")==null){
        out.println("请先登录");
        return;
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>恭喜你!登录成功</p>
<p>

</p>
</body>
</html>
