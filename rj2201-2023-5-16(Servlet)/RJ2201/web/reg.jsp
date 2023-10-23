<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/5/10
  Time: 22:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册界面</title>
</head>

<body>
<h1>
    学生注册信息
</h1>
<form method="post" action="regsrv.do">
    <label for="id">学号： </label>
    <input type="text" id="id" name="id" placeholder="输入学号" required/><br/>

    <label for="name">姓名： </label>
    <input type="text" id="name" name="name" placeholder="输入姓名" required/><br/>

    <label for="password">密码： </label>
    <input type="password" id="password" name="password" placeholder="输入密码" required/><br/>

    <label for="confirm_pwd">确认密码：</label>
    <input type="password" id="confirm_pwd" name="confirm_pwd" placeholder="再次输入密码" required/><br/>
    <p>
        性别：
        <input type="radio" name="gender" value="男" required/>男
        <input type="radio" name="gender" value="女" required/>女<br/>
    </p>

    <input type="submit" value="注册"/>
    <input type="reset" value="重置"/>
</form>
</body>
</html>

