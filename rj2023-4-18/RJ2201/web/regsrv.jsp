<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/4/18
  Time: 14:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //只用于POST 提交数据
    request.setCharacterEncoding("utf-8");
    String un = request.getParameter("username");//获取表单字段值,或者获取地址栏参数值 name代表字段名或者参数名
    String pwd = request.getParameter("password");
    String[] aihao = request.getParameterValues("aihao");//获取多个名字一样的字段或者参数
    if (un.equals("admin") && pwd.equals("123")) {
        out.print("登录成功");
    } else {
        out.print("登录失败");
    }
    if (aihao != null) {
        for (String i : aihao) {
            out.println("\t爱好=" + i);
        }
    }
%>
</body>
</html>
