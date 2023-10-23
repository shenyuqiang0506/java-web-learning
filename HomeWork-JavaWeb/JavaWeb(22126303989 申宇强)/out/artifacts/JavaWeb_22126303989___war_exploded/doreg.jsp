<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/4/23
  Time: 21:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");//
    //获取记住密码是否选中
    String rememberMe = request.getParameter("rememberMe");
    if (rememberMe != null) {
        //获取值
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        //把值放入cookie
        Cookie c1 = new Cookie("username",username);
        Cookie c2 = new Cookie("password",password);
        response.addCookie(c1);
        response.addCookie(c2);
        //重新定向到登录界面
        response.sendRedirect("login.jsp");
    }
%>
</body>
</html>
