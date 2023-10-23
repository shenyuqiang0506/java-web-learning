<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*, entities.Message"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
	div.msgs{
		height:500px;		
	}
	dl dt span.time{
		color: gray;
	}
	dl dt span.user{
		color: red;		
	}
	dl dt span.touser{
		colro: pink;
	}
</style>
</head>
<body>
<div class="msgs">
	<dl>
		<%
			String content;
			List<Message> msgs = (List<Message>)application.getAttribute("msgs");
			String myName = (String)session.getAttribute("nicheng");
			if(msgs != null){
				for(Message msg : msgs){
					int id = msg.getId();
					Date time = msg.getTime();
					String user = msg.getUser();
					String toUser = msg.getToUser();
					boolean isPrivate = msg.isPrivate();
					String line = msg.getMsg();
					if(isPrivate){
						 if(toUser.equals(myName) || user.equals(myName)){
							out.println("<dt><span class='time'>[" + time + "]</span> <span class='user'>" + user + "</span> 对  <span class='touser'>" + toUser +  "</span>说：");
							out.println("<dd>" + line + " <a href='delmsg.jsp?id=" + id + "'>[撤回]</a></dd>");		
						 }
					}else{
						out.println("<dt><span class='time'>[" + time + "]</span> <span class='user'>" + user + "</span> 说：");
						out.println("<dd>" + line + " <a href='delmsg.jsp?id=" + id + "'>[撤回]</a></dd>");		
					}
								
				}
			}
	%>
	</dl>
	
</div>

<%
	response.setHeader("refresh", "5");
%>
</body>
</html>