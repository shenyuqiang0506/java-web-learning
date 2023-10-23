<%@ page import="Beans.StudentBean" %><%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/5/16
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="stu" class="Beans.StudentBean"/>
<jsp:setProperty name="stu" property="*"/>
<%
  if (stu.getPassword().equals(stu.getConfirm_pwd())){
%>
  学号:<jsp:getProperty name="stu" property="id"/><br>
  姓名:<jsp:getProperty name="stu" property="name"/><br>
  密码:<jsp:getProperty name="stu" property="password"/><br>
  性别:<jsp:getProperty name="stu" property="gender"/><br>

<%
  }else {
    out.print("两次输入的密码不相同，请重新输入！");
  }
%>

</body>
</html>
