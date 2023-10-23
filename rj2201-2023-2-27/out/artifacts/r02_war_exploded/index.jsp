<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/2/27
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
 keep
  <%=request.getAttribute("msg")==null?"":request.getAttribute("msg")%>
  <form action="./ro2" method="post">
      <input type= "text" name="post">
      <input type="">
  </form>
  </body>
</html>
