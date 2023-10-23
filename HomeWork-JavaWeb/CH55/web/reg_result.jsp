<%@ page import="Beans.StudentBean" %><%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/5/10
  Time: 22:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生注册结果</title>
</head>
<body>
<%
    StudentBean student = (StudentBean) session.getAttribute("student");
%>
<h1>学生注册结果</h1>
<p>
    学号: <%=student.getId()%>
</p>
<p>
    姓名: <%=student.getName()%>
</p>
<p>
    性别: <%=student.getGender()%>
</p>
<p>
    密码: <%=student.getPassword()%>
</p>
</body>
</html>
