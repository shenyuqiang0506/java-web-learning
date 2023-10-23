<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/4/25
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  request.setCharacterEncoding("utf-8");
  String nicheng = request.getParameter("nicheng");
  session.setAttribute("nicheng",nicheng);
  String userId = request.getParameter("userId");
  session.setAttribute("userId",userId);
  response.sendRedirect("chat.jsp");
%>
