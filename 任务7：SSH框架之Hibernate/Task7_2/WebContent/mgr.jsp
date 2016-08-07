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
	border: 1px solid burlywood;
}

.c1 {
	width: 100px;
	text-align: center;
}

.c2 {
	width: 80px;
	text-align: center;
}

</style>
</head>

<body>
	<%
		List<Users> list = (List<Users>) session.getAttribute("users");
		Iterator iter = list.iterator();
	%>
	<table>
		<tr>
			<td class="c1">用户名</td>
			<td class="c2"></td>
			<td class="c2"></td>
		</tr>
		<%
			int i = 0;
			while (iter.hasNext()) {
				Users us = (Users) iter.next();
		%>
		<tr <%if (i % 2 == 0) {%> bgcolor="#F0F8FF" <%}%>>
			<td class="c1"><%=us.getUser_name()%></td>
			<td class="c2"><a href="<%=path%>/HelloStruts/queryuser.action?id=<%=us.getId()%>">查看</a></td>
			<td class="c2"><a href="<%=path%>/HelloStruts/deleteuser.action?id=<%=us.getId()%>">删除</a></td>
		</tr>
		<%
			i++;
			}
		%>

	</table>

</body>
</html>
