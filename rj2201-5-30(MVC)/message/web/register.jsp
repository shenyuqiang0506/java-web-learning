<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/6/1
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            background-color: white;
            background-size: 100% 100%;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-image: url("言叶之庭8.png");
        }

        html {
            width: 100%;
            height: 100%;
        }

        label {
            color: white;
            font-weight: bolder;
        }

        h1 {
            color: white;
        }

        .center-in-center {
            position: absolute;
            top: 50%;
            left: 50%;
            -webkit-transform: translate(-50%, -50%);
            -moz-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            -o-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
        }

        .col {
            color: white;
            font-weight: bolder;
        }

    </style>
</head>
<body>
<div align="center" class="center-in-center">
    <h1 align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请完善你的相关信息:</h1>
    <form action="RegistServlet" method="post">
        <input type="hidden" name="action" value="regist"><br>
        <label>用户名:</label>
        &nbsp;&nbsp;&nbsp;
        <input type="text" name="username" required><br>
        <label>密码:</label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="password" name="password" required><br>
        <label>确认密码:</label>
        <input type="password" name="password2" required><br>
        <p class="col">${message}</p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit" name="regist" value="注册" style="width: 75px">
        <input type="reset" value="重置" style="width: 75px">
    </form>
</div>
</body>
</html>
