<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.gzj.entity.Vip"%>
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
	<%
		request.setCharacterEncoding("utf-8");
		Vip vip = (Vip) session.getAttribute("OneVip");
	%>
	<center>
	<form action="<%=path%>/modifyOneVIP.action" method="post" onsubmit="return check()">
		<table bgColor="#c0c0c0">

			<tr>
				<td align="center" bgcolor=green colspan=2><font color=white>修改VIP信息</font></td>
			</tr>
			<tr>
				<td>姓名：</td>
				<td><input type="text" name="name" id="name"
					value="<%=vip.getName()%>"></td>
			</tr>
			<tr>
				<td>年龄：</td>
				<td><input type="number" name="age" id="age"
					value="<%=vip.getAge()%>"></td>
			</tr>
			<tr>
				<td>入会时间：</td>
				<td><input type="date" name="joinTime" id="joinTime"
					value="<%=(new SimpleDateFormat("yyyy-MM-dd")).format(vip.getJoinTime()) %>"></td>
			</tr>
			<tr>
				<td>成分：</td>
				<td><input type="text" name="profession" size=20
					value="<%=vip.getProfession()%>"></td>
			</tr>			
			<tr>
				<td align="center" colspan="2"><input type="hidden" name="vipId"
					value="<%=vip.getVipId()%>" /><input type="submit" value="修改">
				</td>
			</tr>
		</table>

	</form>
	</center>
</body>
</html>