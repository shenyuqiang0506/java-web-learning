<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/4/23
  Time: 14:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //    response.setHeader("abc","123");
    response.setHeader("refresh", "3;url=http://www.baidu.com");
%>
<span id="timer">3</span>秒后转百度

</body>
</html>
<script type="text/javascript">
    setInterval(function () {
        var n = document.getElementById("timer").innerHTML;
        n--;
        document.getElementById("timer").innerHTML = n;
    }, 1000);

</script>
