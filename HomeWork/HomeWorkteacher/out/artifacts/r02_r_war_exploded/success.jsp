<%--
  Created by IntelliJ IDEA.
  User: JMLF
  Date: 2023/2/27
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%=request.getAttribute("msg")==null?"":request.getAttribute("msg")%>
</body>
</html>
