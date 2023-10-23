<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/5/9
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>用户注册</h1>
<form action="test.jsp" method="post">
    <p>
        姓名:<input type="text" name="username">
    </p>
    <p>
        性别:<input type="text" name="sex">
    </p>
    <p>
        年龄:<input type="text" name="brith">(需要大于18岁)
    </p>
    <input type="submit" value="提交">
    <input type="reset" value="重置">
</form>
</body>
</html>
