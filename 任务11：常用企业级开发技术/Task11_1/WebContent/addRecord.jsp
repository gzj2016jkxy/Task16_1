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
	<center>
		<form action="<%=path%>/addRecord.action" method="post" onsubmit="return check()">
			<table bgColor="#c0c0c0">
				<tr>
					<td align="center" bgcolor=green colspan=2><font color=white>添加消费记录</font></td>
				</tr>
				<tr>
					<td>VIP编号：</td>
					<td><input type="number" name="vipid" id="vipid" onblur="validateVipId()"><div id="vipmessage"></div></td>
				</tr>
				<tr>
					<td>姓名：</td>
					<td><div id="name"></div></td>
				</tr>	
				<tr>
					<td>商品编号：</td>
					<td><input type="number" name="commodityId" id="commodityId" onblur="validateGoodsId()"><div id="goodsmessage"></div></td>
				</tr>
				<tr>
					<td>商品名称：</td>
					<td><div id="commodityName" id="commodityName"></div></td>
				</tr>			
				<tr>
					<td>商品价格：</td>
					<td><div id="price" id="price"></div></td>
				</tr>
				<tr>
					<td>实收金额：</td>
					<td><div id="practicePrice" id="practicePrice"></div></td>
				</tr>												
				<tr ><td align="center" colspan="2" ><input type="submit" value="添加">&nbsp;&nbsp; <input
				type="reset"  value="重置"></td></tr>				
			</table>
			
		</form>
	</center>
</body>
</html>