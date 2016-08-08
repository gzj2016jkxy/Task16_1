<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<script src="js/checkVIP.js"></script>
</head>
<jsp:include page="isLogin.jsp"></jsp:include>
<body>
	<center>
		<form action="<%=path%>/addVIPInfo.action" method="post" onsubmit="return check()">
			<table bgColor="#c0c0c0">
				<tr>
					<td align="center" bgcolor=green colspan=2><font color=white>添加VIP信息</font></td>
				</tr>
				<tr>
					<td>姓名：</td>
					<td><input type="text" size=20 name="name" id="name"></td>
				</tr>
				<tr>
					<td>年龄：</td>
					<td><input type="number" name="age" id="age"></td>
				</tr>				
				<tr>
					<td>入会时间：</td>
					<td><input type="date" name="joinTime" id="joinTime"></td>
				</tr>
				<tr>
					<td>成分：</td>
					<td><input type="text" name="profession" size=20 id="profession"></td>
				</tr>									
				<tr ><td align="center" colspan="2" ><input type="submit"  value="添加">&nbsp;&nbsp; <input
				type="reset"  value="重置"></td></tr>				
			</table>
			
		</form>
	</center>
</body>
</html>