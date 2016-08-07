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
	<form action="<%=path%>/HelloStruts/reg.action" method="post">
		<table bgColor="#c0c0c0">
			<tr>
				<td align="center" bgcolor=green colspan=2><font color=white>注册用户</font></td>
			</tr>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="user_name" /></td>
			</tr>
			<tr>
				<td>口令：</td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td>姓名：</td>
				<td><input type="text" name="real_name" /></td>
			</tr>
			<tr>
				<td>年龄：</td>
				<td><input type="number" name="age" /></td>
			</tr>
			<tr>
				<td>电话号码：</td>
				<td><input type="text" name="phone_num" /></td>
			</tr>
			<tr>
				<td>家庭住址：</td>
				<td><input type="text" name="address" /></td>
			</tr>
			<tr>
				<td style="text-align: left;"><input type="reset" value="重置" /></td>
				<td style="text-align: right;"><input type="submit" value="注册" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
