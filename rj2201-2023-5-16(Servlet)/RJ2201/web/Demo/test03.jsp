<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/5/25
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>访问计数器</title>
</head>
<body>
<h1>欢迎来到我的网站！</h1>

<%
  response.setContentType("text/html; charset=UTF-8"); // 设置输出的字符集为 utf-8

  Integer counter = (Integer)application.getAttribute("counter"); // 转成 Integer 类型
  if(counter == null){ // 如果 counter 为空
    counter = 0; // 赋值 counter 为 0
  }

  counter++; // counter 加 1
  synchronized(application){ // 同步块
    application.setAttribute("counter", counter); // 将 counter 对象放入 application
  }

  out.println("<p>网页被刷新了 " + counter + " 次。</p>"); // 输出结果
%>

</body>
</html>
