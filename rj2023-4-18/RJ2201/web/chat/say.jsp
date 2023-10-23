<%@ page import="javax.net.ssl.SSLContext" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/4/25
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    String msg = request.getParameter("msg");
    //先找初始值
    Object o = application.getAttribute("msgs");
    String old = "";
    if (o != null) {
        old = (String) o;//获得旧数据
    }
    old = "[" + (new Date()).toLocaleString() + "]" + session.getAttribute("nicheng") + "  " + "说:" + msg + "<br>" + old;
    application.setAttribute("msgs", old);
    response.sendRedirect("chat.jsp");
%>
