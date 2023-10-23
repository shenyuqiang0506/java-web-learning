<%@ page import="Beans.StudentBean" %><%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/5/10
  Time: 22:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    //获取表单数据
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String password1 = request.getParameter("password");
    String password2 = request.getParameter("confirm_pwd");

    // 检验密码和确认密码是否相等
    if (!password1.equals(password2)) {
        out.print("两次输入的密码不相同，请重新输入！");
    } else {
        StudentBean student = new StudentBean();
        student.setId(id);
        student.setName(name);
        student.setGender(gender);
        student.setPassword(password1);

        session.setAttribute("student", student);  // 存储学生对象到会话作用域

        response.sendRedirect("reg_result.jsp");  // 显示注册结果页面
    }
%>
