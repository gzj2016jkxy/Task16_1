<%@page import="java.util.Iterator"%>
<%@page import="com.gzj.util.CartGood"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.gzj.util.Cart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车</title>
<style type="text/css">
td {
	font-size: 9pt;
	color: #353535;
	line-height: 120%
}

body {
	font-size: 9pt;
	line-height: 120%
}

a:link {
	color: #000000;
	text-decoration: none
}

a:visited {
	color: #000000;
	text-decoration: none
}

a:active {
	color: #000000;
	text-decoration: none
}

a:hover {
	right: 0px;
	color: #336699;
	position: relative;
	top: 1px;
	text-decoration: none
}

.bold1 {
	font-weight: bold;
	font-size: 9pt;
	color: #6e6e6e
}

.style1 {
	color: #0099FF;
	font-size: 12pt;
}

.blue1 {
	font-weight: bold;
	color: #00addf
}

.blue2 {
	font-weight: bold;
	font-size: 12pt;
	color: #00addf
}
</style>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	Cart cart = (Cart) session.getAttribute("Cart");
	HashMap<String, CartGood> items = new HashMap<String, CartGood>();
	if (cart != null) {
		items = cart.getItems();
	}
%>

</head>
<body>
	<table cellspacing="0" cellpadding="0" width="812" align="center"
		bgcolor="#ffffff" border="0">
		<tbody>
			<tr>
				<td><img height="1" alt=""
					src="<%=path%>/register/cartImage.files/spacer.gif" width="38"
					border="0"></td>
				<td><img height="1" alt=""
					src="<%=path%>/register/cartImage.files/spacer.gif" width="63"
					border="0"></td>
				<td><img height="1" alt=""
					src="<%=path%>/register/cartImage.files/spacer.gif" width="59"
					border="0"></td>
				<td><img height="1" alt=""
					src="<%=path%>/register/cartImage.files/spacer.gif" width="56"
					border="0"></td>
				<td><img height="1" alt=""
					src="<%=path%>/register/cartImage.files/spacer.gif" width="62"
					border="0"></td>
				<td><img height="1" alt=""
					src="<%=path%>/register/cartImage.files/spacer.gif" width="16"
					border="0"></td>
				<td><img height="1" alt=""
					src="<%=path%>/register/cartImage.files/spacer.gif" width="44"
					border="0"></td>
				<td><img height="1" alt=""
					src="<%=path%>/register/cartImage.files/spacer.gif" width="77"
					border="0"></td>
				<td><img height="1" alt=""
					src="<%=path%>/register/cartImage.files/spacer.gif" width="82"
					border="0"></td>
				<td><img height="1" alt=""
					src="<%=path%>/register/cartImage.files/spacer.gif" width="77"
					border="0"></td>
				<td><img height="1" alt=""
					src="<%=path%>/register/cartImage.files/spacer.gif" width="80"
					border="0"></td>
				<td><img height="1" alt=""
					src="<%=path%>/register/cartImage.files/spacer.gif" width="72"
					border="0"></td>
				<td><img height="1" alt=""
					src="<%=path%>/register/cartImage.files/spacer.gif" width="34"
					border="0"></td>
			</tr>
			<tr>
				<td colspan="6" rowspan="2"><img height="79" alt=""
					src="<%=path%>/register/cartImage.files/title_r1_c1.gif"
					width="294" border="0" name="title_r1_c1"></td>
				<td bgcolor="#ffffff" colspan="7">
					<div align="right">
						<a name="top"></a> <a href="<%=path%>/register/cart.jsp"> <img
							height="20" src="<%=path%>/register/cartImage.files/top_cart.gif"
							width="76" border="0">
						</a> <a onfocus="this.blur()" href="checkMyInfo.jsp"> <img
							height="20" src="<%=path%>/register/cartImage.files/top_my.gif"
							width="76" border="0">
						</a> <a onfocus="this.blur()" href="../tourist/help.jsp"> <img
							height="20" src="<%=path%>/register/cartImage.files/top_faq.gif"
							width="76" border="0">
						</a> <a onfocus="this.blur()" href="../index.jsp"> <img
							height="20" src="<%=path%>/register/cartImage.files/top_wh.gif"
							width="76" border="0">
						</a>
					</div>
				</td>
			</tr>
			<tr>
				<td bgcolor="#ffffff" colspan="7">
					<table height="44" cellspacing="0" cellpadding="0" width="61%"
						align="right" border="0">
						<tbody>
							<tr>
								<td>
									<div align="left">订花热线：0411-12345678</div>
								</td>
							</tr>
							<tr>
								<td>
									<div align="left">订花 Q&nbsp;Q：12345678</div>
								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
			<tr>
				<td><img height="27" alt=""
					src="<%=path%>/register/cartImage.files/title_r2_c1.gif" width="38"
					border="0" name="title_r2_c1"></td>
				<td><a href="../index.jsp"><img height="27" alt=""
						src="<%=path%>/register/cartImage.files/title_r2_c2.gif"
						width="63" border="0" name="title_r2_c2"></a></td>
				<td colspan="11"><a href="getProduce.action"><img
						height="27" alt=""
						src="<%=path%>/register/cartImage.files/title_r2_c10.gif"
						width="77" border="0" name="title_r2_c10"></a><a
					href="../tourist/language.jsp"><img height="27" alt=""
						src="<%=path%>/register/cartImage.files/title_r2_c11.gif"
						width="80" border="0" name="title_r2_c11"></a><a
					href="../tourist/flowersLanguage.jsp"><img height="27" alt=""
						src="<%=path%>/register/cartImage.files/title_r2_c12.gif"
						width="72" border="0" name="title_r2_c12"></a><img height="27"
					alt="" src="<%=path%>/register/cartImage.files/title_r2_c13.gif"
					width="482" border="0" name="title_r2_c13"></td>
			</tr>
		</tbody>
	</table>
	<div align="left">
		<br>
	</div>
	<table cellspacing="1" cellpadding="2" width="812" align="center"
		border="0">
		<tbody>
			<tr>
				<td width="397" height="40">
					<div class="blue2" align="center">
						<div align="left">我的购物车</div>
					</div>
				</td>
				<td width="352">
					<div align="center">
						<img height="60"
							src="<%=path%>/register/cartImage.files/liucheng1.gif"
							width="235">
					</div>
				</td>
			</tr>
		</tbody>
	</table>
	<table cellspacing="1" cellpadding="1" width="812" align="center"
		bgcolor="#00addf" border="0">

		<tbody>
			<tr bgcolor="#00addf">
				<td width="25%" height="22">
					<div class="white1" align="center">商品名称</div>
				</td>
				<td width="15%" height="22">
					<div class="white1" align="center">单价 </div>
				</td>
				<td class="white1" width="15%" height="22">
					<div align="center">数 量</div>
				</td>
				<td width="20%" bgcolor="#00addf" height="22">
					<div class="white1" align="center">操 作</div>
				</td>
			</tr>

			<%
				Iterator iterator = items.keySet().iterator();
				while (iterator.hasNext()) {
					String goodsId = (String) iterator.next();
					CartGood cartGood = items.get(goodsId);
			%>

			<form method="post">
				<tr bordercolor="#FFFFFF" bgcolor="#FFFFFF">

					<td><div align="center"><%=cartGood.getGoodsName()%></div></td>
					<td><div align="center"><%=cartGood.getGoodsPrice()%></div></td>
					<td><div align="center">
							<input type="number" value="<%=cartGood.getQuantity()%>" min="1"
								max="100" name="quantity" />
						</div></td>
					<td align="center"><input type="submit" value="更新数量"
						onclick="this.form.action='addToCart.action?goodsId=<%=goodsId%>';this.form.submit()" />
						&nbsp;&nbsp; <input type="submit" value="删除商品"
						onclick="this.form.action='delCartItem.action?goodsId=<%=goodsId%>';this.form.submit()" />
					</td>
				</tr>
			</form>

			<%
				}
			%>

			<tr bgcolor="#ffffff">
				<td colspan="6" height="25">
					<div align="center">
						<form name="form1" method="post">
							<input onfocus="this.blur()"
								onclick="this.form.action='<%=path%>/index.jsp';this.form.submit()"
								type="image" height="43" width="93"
								src="<%=path%>/register/cartImage.files/cart01.gif" border="0">

							<%
								if (cart != null) {
							%>
							<input
								onclick="this.form.action='buildOrder.action';this.form.submit()"
								type="image" height="43" width="165"
								src="<%=path%>/register/cartImage.files/cart04.gif" border="0">
							<%
								}
							%>
						</form>
					</div>
				</td>
			</tr>
			<tr bgcolor="#ebf9fd">
				<td colspan="6" height="36">
					<div align="center"></div>
				</td>
			</tr>

		</tbody>
	</table>
	<br>

	<table cellspacing="0" cellpadding="0" width="812" align="center"
		bgcolor="#e0e0e0" border="0">
		<tbody>
			<tr>
				<td>&nbsp;</td>
			</tr>
		</tbody>
	</table>
	<table width="812" height="48" border="0" align="center"
		cellpadding="0" cellspacing="0">
		<tbody>
			<tr>
				<td height="16" bgcolor="#f5f5f5"><div align="center">
						<span class="cfont"><font color="#7f7f7f"><b><a
									href="../admin/CheckLogin.jsp">管理员登录</a></b></font></span>
					</div></td>
			</tr>
			<tr>
				<td height="31" bgcolor="#f5f5f5"><div align="center">Copyright
						© All Rights Reserved</div></td>
			</tr>
		</tbody>
	</table>
	<p>&nbsp;</p>


</body>
</html>