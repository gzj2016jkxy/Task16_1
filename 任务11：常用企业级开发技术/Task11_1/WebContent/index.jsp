<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>首页</title>
<style type="text/css">
table {
	margin: 50px auto;
}

</style>
</head>

<body>
	<table>
		<tr>
			<td><a href="login.jsp">普通用户登录</a></td>			
		</tr>
		<tr>			
			<td><a href="admin.jsp">管理员登录</a></td>
		</tr>
	</table>
</body>
</html>
