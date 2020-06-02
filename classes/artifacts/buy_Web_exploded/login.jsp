<%@ page contentType="text/html;charset=utf-8"%>
<%@page import="java.util.HashMap"%>
<%
	request.setCharacterEncoding("utf-8");
	String a=request.getParameter("nam");
	String b=request.getParameter("pwd");
	HashMap users=(HashMap)application.getAttribute("users");
	
	if(users.containsKey(a)&&users.get(a).equals(b)){
		session.setAttribute("nam",a);
		response.sendRedirect("all.jsp");
	} else response.sendRedirect("index.jsp");
%>