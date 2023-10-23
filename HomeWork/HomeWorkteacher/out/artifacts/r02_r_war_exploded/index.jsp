<%--
  Created by IntelliJ IDEA.
  User: JMLF
  Date: 2023/2/27
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <!--通过  -->
  <%=request.getAttribute("msg")==null?"":request.getAttribute("msg")%>
  <form action="./r02" method="post">
    <input type="text" name="user" />
    <input type="text" name="password"/>
    <input type="submit" value="提交" />
  </form>
  </body>
</html>
