<%@ page contentType="text/html;charset=utf-8"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Iterator"%>
<html>
<head>
	<title>小小商城-我的购物车</title>
	<link type="text/css" rel="stylesheet" href="common.css">
</head>
<script language="javascript" src="time.js" charset="gbk"></script>
<script language="javascript">

</script>
<body>
<center>
<h2>我的购物车</h2>
<a href="clear.jsp" onclick="return confirm('确定清空购物车？\n(清空后不可恢复)');">清空购物车</a>
<a href="all.jsp">返回购买</a>
<br><br>
<table width=550 cellspacing=1>
	<tr>
		<th>商品名称</th>
		<th>单价</th>
		<th>数量</th>
		<th>总价</th>
		<th>操作</th>
	</tr>
	<%
		HashMap mc=(HashMap)application.getAttribute("mc");//商品列表
		HashMap car=(HashMap)session.getAttribute("car");//购物车
		
		Iterator keys=car.keySet().iterator();
		double total=0.0;//总价格
		while(keys.hasNext()){
			String key=keys.next()+"";//购物车中的商品名称
			int cnt=Integer.parseInt(car.get(key)+"");//购物车中的商品数量
			double price=Double.parseDouble(mc.get(key)+"");//商品单价
	 %>
	 		<tr>
	 			<td><%=key %></td>
	 			<td><%=price %></td>
	 			<td><%=cnt %></td>
	 			<td><%=price*cnt %></td>
	 			<td><a href="del.jsp?mcname=<%=key %>" onclick="return confirm('确定删除该商品？');">删除</a></td>
	 		</tr>
	 <%
	 		total+=cnt*price;
	 	} 
	 %>
	 <tr><th colspan=5 class=right>总价：<%=total %></th></tr>
</table>
</center>
</body>
</html>