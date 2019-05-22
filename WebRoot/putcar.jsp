<%@ page contentType="text/html;charset=utf-8"%>
<%@page import="java.util.HashMap"%>
<%
	HashMap car=(HashMap)session.getAttribute("car");//购物车
	String mcname=request.getParameter("mcname");//待放入购物车的商品名称
	
	//放入购物车
	int cnt=1;
	if(car.containsKey(mcname))cnt=Integer.parseInt(car.get(mcname)+"")+1;
	car.put(mcname,cnt);
	
	response.sendRedirect("mycar.jsp");//跳转到我的购物车显示购物车商品
%>