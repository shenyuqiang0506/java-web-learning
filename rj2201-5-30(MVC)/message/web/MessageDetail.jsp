<%@ page import="javaBean.Message" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="javaBean.Detail" %><%--
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
            height: 100%;
            weight: 100%;
        }
    </style>
</head>
<body>
<%
    String mid = "";
    mid = request.getParameter("mid");
    Message message = new Message();
    message = MessageDB.selectMessage(mid);
%>
<h1>
    主题: <%= message.gettitle()%>
</h1>
<h2>
    内容:
</h2>
<p><%=message.getcontext()%>
</p>
<h3>评论:</h3>
<p>===============================================================</p>
<%
    ArrayList mL = (ArrayList) request.getAttribute("DetailList");
%>

<% if (mL != null) {
    for (int i = 0; i < mL.size(); ++i) {
        Detail detail = (Detail) mL.get(i);

        if (detail.getmid().equals(mid)) {
%>


<p>用户:
    <%= detail.getcuser() %>
</p>
<p>评论：
    <%= detail.getcomment() %>
</p>
<p>时间:
    <%= detail.getctime() %>
</p>
<p>=================================================================================</p>


<%
            }
        }
    }
%>

<form action="LeaveDetailServlet" method="post">
    <input type="hidden" name="action" value="leave">
    <p>提交留言，查看评论：</p>
    <textarea name="comment" cols="60" rows="4" required></textarea><br>
    <input type="hidden" name="mid" value="<%= mid %>">
    <input type="submit" value="卑微评论.">
</form>
</body>
</html>
