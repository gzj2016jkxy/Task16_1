<%@page import="java.util.Iterator"%>
<%@page import="com.gzj.entity.Orders"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
body {
	background-color: #FFFFFF;
}

.style3 {
	color: #0000FF;
	font-size: 16px;
}

.style4 {
	color: #FFFFFF
}

.style5 {
	font-size: 12px
}

.style9 {
	color: #FFFFFF;
	font-size: 12px;
	font-weight: bold;
}
</style>

</head>
<body>
	<h1 class="style3">查看所有的订单</h1>
	<table width=91% border="1" bordercolor="#00addf" bgcolor="#00addf">
		<tr bgcolor="#00addf" bordercolor="#00addf">
			<td width="13%"><div align="center" class="style4 style5">
					<strong>订单Id</strong>
				</div></td>
			<td width="21%"><div align="center" class="style4 style5">
					<strong>用户名</strong>
				</div></td>
			<td width="11%"><div align="center">
					<span class="style9">总价值</span>
				</div></td>
			<td width="30%"><div align="center" class="style9">订单时间</div></td>
		</tr>

		<%
			List<Orders> order = (List<Orders>) session.getAttribute("Orders");
			if (order != null) {
				Iterator it = order.iterator();
				while (it.hasNext()) {
					Orders orders = (Orders) it.next();
					out.println("<tr bgcolor=#FFFFFF bordercolor=#00addf>");
					out.println("<td width='11%'><div align=center class=style13><strong>" + orders.getOrdersId()
							+ "</strong></div></td>");
					out.println(
							"<td width='13%'><div align=center class=style13>" + orders.getUsersName() + "</div></td>");
					out.println("<td width='13%'><div align=center class=style13>" + orders.getOrdersPrice()
							+ "</div></td>");
					out.println("<td width='19%'><div align=center class=style13>" + orders.getOrdersDatetime()
							+ "</div></td>");
					out.println("</tr>");
				}
			}
		%>
	</table>
</body>
</html>