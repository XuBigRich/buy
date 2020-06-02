<%@ page contentType="text/html;charset=utf-8"%>
<%@page import="java.util.HashMap"%>
<%
	HashMap car=(HashMap)session.getAttribute("car");
	String mcname=request.getParameter("mcname");//待删除的商品名称
	car.remove(mcname);//移除键值对
	response.sendRedirect("mycar.jsp");//跳转到我的购物车显示购物车商品
%>