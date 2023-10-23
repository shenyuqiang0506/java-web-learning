<%@ page import="beans.UtilBean" %><%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/5/9
  Time: 15:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="u" class="beans.User"/>
<jsp:setProperty name="u" property="*"/>

<%
String s = request.getParameter("brith");
if (!UtilBean.checkDate(s)){
    out.println("生日格式错误");
    return;
}
int age = UtilBean.getAge(s);
u.setAge(age);
    if (!beans.UtilBean.check(u)){
        out.println("你太小了");
        return;
    }
%>

<jsp:getProperty name="u" property="username"/>
<jsp:getProperty name="u" property="sex"/>
<jsp:getProperty name="u" property="age"/>
</body>
</html>