<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/5/25
  Time: 20:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>三角形输出</title>
</head>
<body>
<%
    String w = request.getParameter("w");
    if (w==null || w.equals("")){
        int n = Integer.parseInt(w);
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                out.println("W");
            }
            out.print("<br>");
        }
    }else {
        out.println("<script>               </script>");
    }
%>
</body>
</html>
