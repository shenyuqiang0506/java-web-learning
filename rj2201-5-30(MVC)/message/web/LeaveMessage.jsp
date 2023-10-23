<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/6/1
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
        body {
            background-color: white;
            background-size: 100% 100%;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-image: url("言叶之庭8.png");
        }

        html {
            height: 100%;
            weight: 100%;
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
    </style>
</head>

<div align="center" class="center-in-center">
    <form action="LeaveMessageServlet" method="post">

        <input type="hidden" name="action" value="leave">

        <p>标题</p>
        <textarea name="title" rows="1" cols="60" required></textarea>
        <p>留言</p>
        <textarea name="context" cols="60" rows="8" required></textarea><br>
        <input type="submit" value="提交">

    </form>

</div>
</body>
</html>
