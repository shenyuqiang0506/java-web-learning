<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/5/25
  Time: 20:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>计算器</title>
</head>
<body>
<form method="post" action="<%= request.getContextPath() %>/calc.jsp">
    <input type="text" name="num1" placeholder="请输入第一个数字"/><br/>
    <input type="text" name="num2" placeholder="请输入第二个数字"/><br/>
    <input type="radio" name="op" value="+" checked/> +
    <input type="radio" name="op" value="-"/> -
    <input type="radio" name="op" value="*"/> *
    <input type="radio" name="op" value="/"/> / <br/>
    <input type="submit" value="计算"/><br/>
</form>

<%
    String op = request.getParameter("op"); // 获取表单字段 op
    if (op != null) { // 如果 op 不为空
        double num1 = Double.parseDouble(request.getParameter("num1")); // 将字段 num1 转成实数
        double num2 = Double.parseDouble(request.getParameter("num2")); // 将字段 num2 转成实数
        double num3 = 0; // 计算结果
        if (op.equals("+")) { // 如果为字符串 "+"
            num3 = num1 + num2; // 则做加法运算
        } else if (op.equals("-")) {// 如果为字符串 "-"
            num3 = num1 - num2; // 则做减法运算
        } else if (op.equals("*")) {// 如果为字符串 "*"
            num3 = num1 * num2; // 则做乘法运算
        } else if (op.equals("/")) {// 如果为字符串 "/"
            if (num2 == 0) { %>
<h1>错误：除数不能为 0</h1>
<% } else {
    num3 = num1 / num2; // 则做除法运算
}
}
    if (!op.equals("/") || num2 != 0) { %>
<h1>计算结果： <%= num1 %> <%= op %> <%= num2 %> = <%= num3 %>
</h1>
<% }
    out.print(num3);
}
%>

</body>
</html>
