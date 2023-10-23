<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/4/25
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (session.getAttribute("nicheng")==null){
        out.println("请从登录界面进来");
        return;
    }
%>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            width: 800px;
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
    </style>
</head>
<body>
<div>
    昵称:<%=session.getAttribute("nicheng")%>
</div>
<div class="msgs">
    <iframe height="500" width="800" src="msgs.jsp"></iframe>
</div>
<div class="say">
    <form action="say.jsp" method="post">
        留言:<input type="text" name="msg"><input type="submit" value="发送">
    </form>
</div>
</body>
</html>
