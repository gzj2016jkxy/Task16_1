<%@page import="com.gzj.entity.Commodity"%>
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
	<script src="js/checkGoods.js"></script>
</head>
<jsp:include page="isLogin.jsp"></jsp:include>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		Commodity good = (Commodity) session.getAttribute("OneGood");
	%>
	<center>
	<form action="<%=path%>/modifyOneGood.action" method="post" onsubmit="return check()">
		<table bgColor="#c0c0c0">

			<tr>
				<td align="center" bgcolor=green colspan=2><font color=white>修改商品信息</font></td>
			</tr>
			<tr>
				<td>商品名称：</td>
				<td><input type="text" name="commodityName" id="commodityName"
					value="<%=good.getCommodityName()%>"></td>
			</tr>
			<tr>
				<td>商品价格：</td>
				<td><input type="text" name="price" id="price"
					value="<%=good.getPrice()%>"></td>
			</tr>			
			<tr>
				<td>商品折扣：</td>
				<td><input type="text" name="agio" id="agio"
					value="<%=good.getAgio()%>"></td>
			</tr>			
			<tr>
				<td align="center" colspan="2"><input type="hidden" name="commodityId"
					value="<%=good.getCommodityId()%>" /><input type="submit" value="修改">
				</td>
			</tr>
		</table>

	</form>
	</center>
</body>
</html>