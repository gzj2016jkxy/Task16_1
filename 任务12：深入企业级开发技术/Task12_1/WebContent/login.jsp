<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>唐诗搜索登录页面</title>
<style type="text/css">
table {
	margin: 20px auto;
}
</style>
<script type="text/javascript">
	function check() {
		if (document.getElementById("username").value == "") {
			alert("请输入用户名！");
			document.getElementById("username").focus();
			return false;
		}
		
		if (document.getElementById("password").value == "") {
			alert("请输入密码！");
			document.getElementById("password").focus();
			return false;
		}
		return true;
	}
	
</script>

</head>

<body>
	<form action="<%=path%>/login.action" method="post"
		onsubmit="return check()">
		<table>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="username" id="username"></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" name="password" id="password"></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: right;"><input type="submit"
					value="登录"></td>
			</tr>					
		</table>
	</form>
</body>
</html>
