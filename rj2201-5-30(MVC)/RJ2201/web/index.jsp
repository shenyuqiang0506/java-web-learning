<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/5/30
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>留言板页面</title>
    <style>
        body {
            background-image: url("言叶之庭8.png");

            background-color: white;
            background-size: 100% 100%;
            background-repeat: no-repeat;
            background-attachment: fixed

        }
        html {
            height:100%;
            weight:100%;
        }
        label{
            color:white;
            font-weight:bolder;
        }
    </style>
</head>
<body>
<form action="message.do" method="post">
    <p>
        <label>
            留&nbsp;&nbsp;言&nbsp;者:
            <input type="text" name="username">
        </label>
    </p>
    <p>
        <label>
            留言标题:
            <input type="text" name="MessageTitle">
        </label>
    </p>
    <p>
        <label>
            留言内容:
            <textarea name="MessageContent" cols="40" rows="10"></textarea>
        </label>
    </p>
    <input type="submit" name="submit" value="提交">
    <input type="reset" name="reset" value="重置">
    <a href="message.do">查看留言</a>
</form>
</body>
</html>
