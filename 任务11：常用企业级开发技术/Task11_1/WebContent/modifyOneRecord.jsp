<%@page import="com.gzj.entity.Consume"%>
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
	<script src="js/jquery.js"></script>
	<script src="js/validate.js"></script>
</head>
<jsp:include page="isLogin.jsp"></jsp:include>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		Consume consume = (Consume) session.getAttribute("OneRecord");
	%>
	<center>
		<form action="<%=path%>/modifyOneRecord.action" method="post" onsubmit="return check()">
			<table bgColor="#c0c0c0">

				<tr>
					<td align="center" bgcolor=green colspan=2><font color=white>修改消费记录</font></td>
				</tr>
				<tr>
					<td>VIP编号：</td>
					<td><input type="number" name="vipid" id="vipid" onblur="validateVipId()"
						value="<%=consume.getVip().getVipId()%>"><div id="vipmessage"></div></td>
				</tr>
				<tr>
					<td>姓名：</td>
					<td><div id="name" id="name"><%=consume.getVip().getName() %></div></td>
				</tr>
				<tr>
					<td>商品编号：</td>
					<td><input type="number" name="commodityId" id="commodityId" onblur="validateGoodsId()"
						value="<%=consume.getCommodity().getCommodityId()%>"><div id="goodsmessage"></div></td>
				</tr>
				<tr>
					<td>商品名称：</td>
					<td><div id="commodityName"><%=consume.getCommodity().getCommodityName()%></div></td>
				</tr>
				<tr>
					<td>商品价格：</td>
					<td><div id="price"><%=consume.getCommodity().getPrice()%></div></td>
				</tr>
				<tr>
					<td>实收金额：</td>
					<td><div id="practicePrice"><%=(double)Math.round(consume.getCommodity().getPrice()*consume.getCommodity().getAgio()*100)/100 %></div></td>
				</tr>
				<tr>
					<td align="center" colspan="2"><input type="hidden"
						name="consumeId" value="<%=consume.getConsumeId()%>" /><input
						type="submit" value="修改"></td>
				</tr>
			</table>

		</form>
	</center>
</body>
</html>