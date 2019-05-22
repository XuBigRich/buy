<%@ page contentType="text/html;charset=utf-8"%>
<%@page import="java.util.HashMap"%>
<html>
<head>
	<title>小小商城</title>
	<link type="text/css" rel="stylesheet" href="common.css">
</head>
<script language="javascript" src="time.js" charset="gbk"></script>
<script language="javascript">

</script>
<%
	if(application.getAttribute("users")==null){
		HashMap users=new HashMap();
		users.put("tom","111");
		users.put("jack","222");
		users.put("kelly","333");
		application.setAttribute("users",users);
	}
	if(application.getAttribute("mc")==null){
		HashMap mc=new HashMap();
		mc.put("联想笔记本",3800.0);
		mc.put("蓝山咖啡",128.0);
		mc.put("玻璃水",15.8);
		mc.put("书包",28.0);
		mc.put("鼠标",52.0);
		mc.put("康师傅方便面",5.0);
		application.setAttribute("mc",mc);
	}
	if(session.getAttribute("car")==null){
		HashMap car=new HashMap();
		session.setAttribute("car",car);
	}
%>
<body>
<center>
<form action="login.jsp" method=post>
<table width=300 cellspacing=1>
	<tr><th colspan=2>登录</th></tr>
	<tr>
		<th>用户名</th>
		<td><input type=text name="nam"></td>
	</tr>
	<tr>
		<th>密码</th>
		<td><input type=password name="pwd"></td>
	</tr>
	<tr><th colspan=2><input type=submit value="登录"></th></tr>
</table>
</form>
</center>
</body>
</html>