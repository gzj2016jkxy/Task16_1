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
	<center>
		<form action="<%=path%>/addGoodsInfo.action" method="post" onsubmit="return check()">
			<table bgColor="#c0c0c0">
				<tr>
					<td align="center" bgcolor=green colspan=2><font color=white>添加商品信息</font></td>
				</tr>
				<tr>
					<td>商品名称：</td>
					<td><input type="text" name="commodityName" id="commodityName"></td>
				</tr>
				<tr>
					<td>商品价格：</td>
					<td><input type="text" name="price" id="price"></td>
				</tr>
				<tr>
					<td>商品折扣：</td>
					<td><input type="text" name="agio" id="agio"></td>
				</tr>
				<tr>
					<td align="center" colspan="2"><input type="submit" value="添加">&nbsp;&nbsp;
						<input type="reset" value="重置"></td>
				</tr>
			</table>

		</form>
	</center>
</body>
</html>