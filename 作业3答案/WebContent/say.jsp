<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*, entities.Message"%>
<%
	List<String> filters = new ArrayList<String>();
	filters.add("吃屎");
	filters.add("操你妈");
	filters.add("傻逼");

	request.setCharacterEncoding("utf-8");
	String msg = request.getParameter("msg");
	
	
	//先找旧的
	Object o = application.getAttribute("msgs");
	int maxid = 0;
	List<Message> old = new ArrayList<Message>();
	if(o!=null){
	 	old = (List<Message>)o;
		maxid = (Integer)application.getAttribute("maxid");
	}
	
	for(String filter:filters){
		if(msg.contains(filter)){
			msg = msg.replace(filter, "****");
		}
	}
	
	boolean isPrivate = false;
	String toUser = "";
	if(msg.startsWith("@")){
		int p = msg.indexOf(" ");
		String to = msg.substring(1, p);
		List<String> users = (List<String>)application.getAttribute("users");
		for(String user : users){
			if(user.equals(to)){
				isPrivate = true;
				toUser = to;
				msg = msg.substring(p+1);
				break;
			}
		}
	}
	
	String fromUser = (String)session.getAttribute("nicheng");
	Message msgObj = new Message(++maxid, new Date(), fromUser, msg, isPrivate, toUser);
	
	old.add(msgObj);
	
	application.setAttribute("msgs", old);
	application.setAttribute("maxid", maxid);
	
	response.sendRedirect("chat.jsp");
	
%>
