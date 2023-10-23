<%@ page import="java.util.List" %>
<%@ page import="Beans.Message" %><%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/5/30
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--EL表达式: ${msgs},--%>
<%
    List<Message> list = (List<Message>) application.getAttribute("msgs");
    if (list == null) {
        out.println("无留言:)");
    } else {
        for (Message message : list) {


%>
<div>
    <p>
        留言者:<%=message.getUsername()%>
    </p>
    <p>
        留言时间:<%=message.getTime()%>
    </p>
    <p>
        留言标题:<%=message.getMessageTitle()%>
    </p>
    <p>
        留言内容:<textarea rows="" cols=""><%=message.getMessageContent()%></textarea>
    </p>
</div>
<%
        }
    }
%>

</body>
</html>
