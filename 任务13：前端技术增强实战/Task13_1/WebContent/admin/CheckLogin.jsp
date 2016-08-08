<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员登陆页面</title>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

</head>
<body>
	<form action="<%=path%>/adminlogin.action" method="post">
		
		<table width="600" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td colspan="2"><img src="<%=path%>/admin/images/Admin_Login1.gif" width="600"
					height="126"></td>
			</tr>
			<tr>
				<td width="508" valign="top" background="<%=path%>/admin/images/Admin_Login2.gif"><table
						width="508" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="37" colspan="6">&nbsp;</td>
						</tr>
						<tr>
							<td width="75" rowspan="2">&nbsp;</td>
							<td width="126"><font color="#043BC9">用户名称：</font></td>
							<td width="39" rowspan="2">&nbsp;</td>
							<td width="131"><font color="#043BC9">用户密码：</font></td>
							<td width="34">&nbsp;</td>
							<td width="103">&nbsp;</td>
						</tr>
						<tr>
							<td><input style="width: 117px;" size=15 name=adminName></td>
							<td><input type=password size=12 name=adminPass></td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
					</table></td>
				<td><input type="image" name="Submit"
					src="<%=path%>/admin/images/Admin_Login3.gif" style="width: 92px; HEIGHT: 126px;"></td>

			</tr>
		</table>
	</form>

</body>
</html>