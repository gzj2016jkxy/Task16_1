<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
<style type="text/css">
	table {
		margin: 20px auto;
	}
</style>
</head>
<body>
	<form action="do_Login.jsp" method="post">
		<table>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="userName" /></td>
			</tr>
			<tr>
				<td>密 码：</td>
				<td><input type="password" name="passWord" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="提交" /></td>
				<td style="text-align: center;"><input type="reset" value="重置" /></td>
			</tr>
		</table>

	</form>
</body>
</html>