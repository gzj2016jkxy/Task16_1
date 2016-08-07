<%@page import="com.gzj.entity.Users"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<style type="text/css">
table {
	margin: 20px auto;
}
</style>
</head>

<body>
	<%
		request.setCharacterEncoding("utf-8");
		Users us = (Users) session.getAttribute("user");
	%>

	<table bgColor="#c0c0c0">
		<tr>
			<td align="center" bgcolor=green colspan=2><font color=white>用户详情</font></td>
		</tr>
		<tr>
			<td>用户名：</td>
			<td><input type="text" name="user_name"
				value="<%=us.getUser_name()%>"></td>
		</tr>
		<tr>
			<td>口令：</td>
			<td><input type="text" name="password"
				value="<%=us.getPassword()%>"></td>
		</tr>
		<tr>
			<td>姓名：</td>
			<td><input type="text" name="real_name"
				value="<%=us.getReal_name()%>"></td>
		</tr>
		<tr>
			<td>年龄：</td>
			<td><input type="text" name="age" value="<%=us.getAge()%>"></td>
		</tr>
		<tr>
			<td>电话号码：</td>
			<td><input type="text" name="phone_num"
				value="<%=us.getPhone_num()%>"></td>
		</tr>
		<tr>
			<td>家庭住址：</td>
			<td><input type="text" name="address"
				value="<%=us.getAddress()%>"></td>
		</tr>
	</table>

</body>
</html>
