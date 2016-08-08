<%@page import="java.util.Iterator"%>
<%@page import="com.gzj.entity.Commodity"%>
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
		List<Commodity> goods = (List<Commodity>) session.getAttribute("Goods");
		Iterator iter = goods.iterator();
	%>
	<center>
		<table>
			<tr>
				<td>商品名称</td>
				<td>商品价格</td>
				<td>商品折扣</td>				
				<td></td>
			</tr>
			<%
				int i = 0;
				while (iter.hasNext()) {
					Commodity good = (Commodity) iter.next();
			%>
			<tr <%if (i % 2 == 0) {%> bgcolor="#F0F8FF" <%}%>>
				<td><%=good.getCommodityName()%></td>
				<td><%=good.getPrice()%></td>				
				<td><%=good.getAgio()%></td>
				<td><a href="deleteGoods.action?id=<%=good.getCommodityId()%>">删除</a></td>
			</tr>
			<%
				i++;
				}
			%>

		</table>
	</center>
</body>
</html>