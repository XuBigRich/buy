<%@ page contentType="text/html;charset=utf-8"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Iterator"%>
<html>
<head>
	<title>小小商城-商品列表</title>
	<link type="text/css" rel="stylesheet" href="common.css">
</head>
<script language="javascript" src="time.js" charset="gbk"></script>
<script language="javascript">

</script>
<body>
<center>
<h2>商品列表</h2>
<a href="mycar.jsp">我的购物车</a>
<br><br>
<table width=500 cellspacing=1>
	<tr>
		<th>商品名称</th>
		<th>单价</th>
		<th>操作</th>
	</tr>
	<%
		HashMap mc=(HashMap)application.getAttribute("mc");
		Iterator keys=mc.keySet().iterator();
		while(keys.hasNext()){
			String key=keys.next()+"";//键，即商品名称
			double val=Double.parseDouble(mc.get(key)+"");//值，即商品单价
	 %>
	 		<tr>
	 			<td><%=key %></td>
	 			<td><%=val %></td>
	 			<td><a href="putcar.jsp?mcname=<%=key %>">放入购物车</a></td>
	 		</tr>
	 <%} %>
</table>
</center>
</body>
</html>