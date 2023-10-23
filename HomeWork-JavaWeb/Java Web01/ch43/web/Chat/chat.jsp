<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/4/25
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 获取当前登录用户信息
    if (session.getAttribute("nicheng")==null){
        out.println("请从登录界面进来");
        return;
    }
    String username = session.getAttribute("nicheng").toString();
%>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            width: 700px;
            margin: 0 auto;
        }

        div {
            border: 1px solid gray;
        }

        div.msgs {
            height: 500px;
            overflow: scroll;
        }

        div.say input[name="msg"] {
            width: 600px;
        }
        #users{
            float: right;
           margin: 5px;
            text-align: center;
        }
        #ren{
            float: right;
            padding: 20px;
        }

    </style>
</head>
<body>
<div>
    你好呀!:<%=username%>
</div>
<!-- 添加成员列表 -->
<div class="msgs">
    <iframe height="500" width="600" src="msgs.jsp" scrolling="no"></iframe>
    <div>
        <h3 id="users">成员列表：</h3>
        <%-- 当前用户 --%>
        <ul id="ren">
            <li><%=username%><br></li>
        </ul>
    </div>
</div>

<div class="say">
    <form action="say.jsp" method="post">
        留言:<input type="text" name="msg">
        <input type="submit" value="发送">
    </form>
</div>
</body>
</html>

