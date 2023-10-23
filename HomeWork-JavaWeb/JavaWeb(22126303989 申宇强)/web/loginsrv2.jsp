<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/4/23
  Time: 22:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String remember = request.getParameter("remember");

// 登录处理
// 如果账号和密码正确则跳转到index.jsp，否则跳转到error.jsp
    if (username.equals("申宇强") && password.equals("22126303989")) {
        if (remember != null && remember.equals("on")) { // 处理记住我选项，保存cookie
            Cookie cookie_username = new Cookie("cookie_username", username);
            Cookie cookie_password = new Cookie("cookie_password", password);
            cookie_username.setMaxAge(30 * 24 * 60 * 60); // 有效期为30天
            cookie_password.setMaxAge(30 * 24 * 60 * 60);
            response.addCookie(cookie_username);
            response.addCookie(cookie_password);
        } else { // 不保存cookie
            Cookie[] cookies = request.getCookies();
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("cookie_username") || cookie.getName().equals("cookie_password")) {
                    cookie.setMaxAge(-1);
                    response.addCookie(cookie);
                }
            }
        }
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("error.jsp");
    }
%>
