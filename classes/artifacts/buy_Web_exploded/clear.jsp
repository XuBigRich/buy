<%@ page contentType="text/html;charset=utf-8"%>
<%@page import="java.util.HashMap"%>
<%
	HashMap car=(HashMap)session.getAttribute("car");
	car.clear();//清空购物车
	response.sendRedirect("mycar.jsp");//跳转到我的购物车显示购物车商品
%>