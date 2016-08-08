<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.gzj.entity.Vip"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<jsp:include page="isLogin.jsp"></jsp:include>
<body>
	<%
		List<Vip> vips = (List<Vip>) session.getAttribute("VIP");
		Iterator iter = vips.iterator();
	%>
	<center>
		<table>
			<tr>
				<td>姓名</td>
				<td>年龄</td>
				<td>入会时间</td>
				<td>成分</td>
				<td></td>
			</tr>
			<%
				int i = 0;
				while (iter.hasNext()) {
					Vip vip = (Vip) iter.next();
			%>
			<tr <%if (i % 2 == 0) {%> bgcolor="#F0F8FF" <%}%>>
				<td><%=vip.getName()%></td>
				<td><%=vip.getAge()%></td>
				<td><%=(new SimpleDateFormat("yyyy-MM-dd")).format(vip.getJoinTime()) %></td>
				<td><%=vip.getProfession()%></td>
				<td><a href="deleteVIP.action?vipId=<%=vip.getVipId()%>">删除</a></td>
			</tr>
			<%
				i++;
				}
			%>

		</table>
	</center>
</body>
</html>