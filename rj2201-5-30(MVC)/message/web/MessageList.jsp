<%@ page import="java.util.ArrayList" %>
<%@ page import="javaBean.Message" %><%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/6/1
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>留言版系统</title>
</head>
<body>
<div align="center">
    <br>
    <h1>欢迎来到留言系统</h1>
    <table width="800" border="1" cellpadding="5">
        <%
            ArrayList ml = (ArrayList) request.getAttribute("MessageList");
        %>
        <tr>
            <th>留言数</th>
            <th>标题</th>
            <th>留言内容</th>
            <th>用户ID</th>
        </tr>
        <%
            if (ml != null) {
                for (int i = 0; i < ml.size(); ++i) {
                    Message message = (Message) ml.get(i);%>
        <tr>
            <td><%=message.getmid()%>
            </td>
            <td><a href="MessageDetail.jsp?mid=<%=message.getmid()%>"<%=message.gettitle()%>
            </td>
            <td><%=message.getcontext()%>
            </td>
            <td><%=message.getuserid()%>
            </td>
        </tr>
        <%
                }
            }
        %>

    </table>
    <h2><a href="LeaveMessage.jsp">我要留言</a></h2>
</div>
</body>
</html>
