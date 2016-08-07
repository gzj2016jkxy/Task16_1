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
	<form action="<%=path%>/HelloStruts/login.action" method="post">
		<table>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="username" /></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td style="text-align: left: ;"><input type="reset" value="重置"></td>
				<td style="text-align: right;"><input type="submit" value="登录"></td>
			</tr>
			<tr>
				<td style="text-align: left;"><a
					href="<%=path%>/HelloStruts/usermanage.action">用户管理</a></td>
				<td style="text-align: right;"><a href="reg.jsp">注册</a></td>
			</tr>
		</table>
	</form>
</body>
</html>
