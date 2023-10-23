<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/4/18
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setAttribute("abc", 100);//将键值对放入request
//      int n = Integer.parseInt(request.getAttribute("abc").toString());
//      Object o = request.getAttribute("abc");
//      out.print(o);
%>
<jsp:forward page="b.jsp"> </jsp:forward>//服务器端跳转,相当于回应了一次
</body>
</html>
