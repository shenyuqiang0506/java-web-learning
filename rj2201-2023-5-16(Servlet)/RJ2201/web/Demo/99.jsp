<%--
  Created by IntelliJ IDEA.
  User: 申宇强
  Date: 2023/6/14
  Time: 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  int n=Integer.parseInt(request.getParameter("n"));
  for(int i=1; i<=n; i++){
    for(int j=1; j<=i; j++){
      out.println("*");
    }
    out.println("<br>");
  }
%>
