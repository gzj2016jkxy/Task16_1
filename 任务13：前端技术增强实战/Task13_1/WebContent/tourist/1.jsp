<%@page import="com.gzj.entity.Goods"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品信息</title>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<link href="tourist/1Image.files/mt_style.css" type="text/css"
	rel="stylesheet">
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
</style>

</head>

<%
	Goods goodsClass = (Goods) session.getAttribute("Goods");
%>
<body>
	<table cellspacing="0" cellpadding="0" width="812" align="center"
		bgcolor="#ffffff" border="0">
		<tbody>
			<tr>
				<td><img height="1" alt=""
					src="tourist/1Image.files/spacer.gif" width="38" border="0"></td>
				<td><img height="1" alt=""
					src="tourist/1Image.files/spacer.gif" width="63" border="0"></td>
				<td><img height="1" alt=""
					src="tourist/1Image.files/spacer.gif" width="59" border="0"></td>
				<td><img height="1" alt=""
					src="tourist/1Image.files/spacer.gif" width="56" border="0"></td>
				<td><img height="1" alt=""
					src="tourist/1Image.files/spacer.gif" width="62" border="0"></td>
				<td><img height="1" alt=""
					src="tourist/1Image.files/spacer.gif" width="16" border="0"></td>
				<td><img height="1" alt=""
					src="tourist/1Image.files/spacer.gif" width="44" border="0"></td>
				<td><img height="1" alt=""
					src="tourist/1Image.files/spacer.gif" width="77" border="0"></td>
				<td><img height="1" alt=""
					src="tourist/1Image.files/spacer.gif" width="82" border="0"></td>
				<td><img height="1" alt=""
					src="tourist/1Image.files/spacer.gif" width="77" border="0"></td>
				<td><img height="1" alt=""
					src="tourist/1Image.files/spacer.gif" width="80" border="0"></td>
				<td><img height="1" alt=""
					src="tourist/1Image.files/spacer.gif" width="72" border="0"></td>
				<td><img height="1" alt=""
					src="tourist/1Image.files/spacer.gif" width="34" border="0"></td>
			</tr>
			<tr>
				<td colspan="6" rowspan="2"><img height="79" alt=""
					src="tourist/1Image.files/title_r1_c1.gif" width="294" border="0"
					name="title_r1_c1"></td>
				<td bgcolor="#ffffff" colspan="7">
					<div align="right">
						<a name="top"></a> <a href="<%=path%>/register/cart.jsp"> <img
							height="20" src="indexImage.files/top_cart.gif" width="76"
							border="0">
						</a> <a onfocus="this.blur()" href="<%=path%>/register/checkMyInfo.jsp">
							<img height="20" src="tourist/1Image.files/top_my.gif" width="76"
							border="0">
						</a> <a onfocus="this.blur()" href="<%=path%>/tourist/help.jsp"> <img
							height="20" src="tourist/1Image.files/top_faq.gif" width="76"
							border="0">
						</a> <a onfocus="this.blur()" href="logout.action"> <img height="20"
							src="tourist/1Image.files/top_wh.gif" width="76" border="0">
						</a>
					</div>
				</td>
			</tr>
			<tr>
				<td bgcolor="#ffffff" colspan="7">
					<table height="44" cellspacing="0" cellpadding="0" width="55%"
						align="right" border="0">
						<tbody>
							<tr>
								<td>
									<div align="left">订花热线：010-12345678</div>
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
					src="indexImage.files/title_r2_c1.gif" width="38" border="0"
					name="title_r2_c1"></td>
				<td><a href="index.jsp"><img height="27" alt=""
						src="indexImage.files/title_r2_c2.gif" width="63" border="0"
						name="title_r2_c2"></a></td>
				<td colspan="11"><a href="getProduce.action"><img
						height="27" alt="" src="blessingImage.files/title_r2_c10.gif"
						width="77" border="0" name="title_r2_c10"></a><a
					href="getLeaveLanguage.action"><img height="27" alt=""
						src="indexImage.files/title_r2_c11.gif" width="80" border="0"
						name="title_r2_c11"></a><a href="tourist/flowersLanguage.jsp"><img
						height="27" alt="" src="indexImage.files/title_r2_c12.gif"
						width="72" border="0" name="title_r2_c12"></a><img height="27"
					alt="" src="indexImage.files/title_r2_c13.gif" width="482"
					border="0" name="title_r2_c13"></td>
			</tr>
		</tbody>
	</table>
	<table cellspacing="0" cellpadding="0" width="760" align="center"
		border="0">
		<tbody>
			<tr>
				<td valign="top">
					<div align="center">
						<table cellspacing="0" cellpadding="0" width="812" border="0">
							<tbody>
								<tr>
									<td>
										<table cellspacing="0" cellpadding="0" width="100%" border="0">
											<tbody>
												<tr>
													<td align="center" width="239" bgcolor="#fcfff0">
														<table cellspacing="0" cellpadding="2" width="100%"
															border="0">
															<tbody>
																<tr>
																	<td>
																		<div align="center">
																			<table cellspacing="0" cellpadding="5" width="135"
																				border="1">
																				<tbody>
																					<tr>
																						<td><img height="160" alt="商品图"
																							src="tourist/image/<%=goodsClass.getGoodsId()%>.jpg"
																							width="160" border="0"></td>
																					</tr>
																				</tbody>
																			</table>
																			<table cellspacing="0" cellpadding="0" width="70%"
																				border="0">
																				<tbody>
																					<tr>
																						<td height="30">
																							<div align="center"></div>
																						</td>
																						<td>
																							<div align="center"></div>
																						</td>
																					</tr>
																				</tbody>
																			</table>
																			<br>
																		</div>
																	</td>
																</tr>
															</tbody>
														</table>
													</td>
													<td valign="top">
														<table cellspacing="0" cellpadding="0" bgcolor="#ffffff"
															border="0">
															<tbody>
																<tr>
																	<td><img height="62" alt=""
																		src="tourist/1Image.files/list_r1_c1.gif" width="564"
																		border="0" name="list_r1_c1"></td>
																</tr>
																<tr>
																	<td background="tourist/1Image.files/list_r3_c1.gif"
																		bgcolor="#ffffff">
																		<form action="<%=path%>/addToCart.action?goodsId=<%=goodsClass.getGoodsId()%>&quantity=1" method="post">
																		<table cellspacing="0" cellpadding="2" width="90%"
																			align="center" border="0">
																			<tbody>
																				<tr>
																					<td width="20%">&nbsp;</td>
																					<td colspan="2"><div align="left"></div></td>
																				</tr>
																				<tr>
																					<td background="">【 <span class="bold1">编
																							号</span> 】
																					</td>
																					<td bgcolor="#fafafa" colspan="2"><div
																							align="left"><%=goodsClass.getGoodsId()%></div></td>
																				</tr>
																				<tr>
																					<td background="tourist/1Image.files/line.gif"
																						colspan="3" height="1"></td>
																				</tr>
																				<tr>
																					<td background="">【 <span class="bold1">名
																							称</span> 】
																					</td>
																					<td bgcolor="#fafafa" colspan="2"><div
																							align="left"><%=goodsClass.getGoodsName()%></div></td>
																				</tr>
																				<tr>
																					<td background="tourist/1Image.files/line.gif"
																						colspan="3" height="1"></td>
																				</tr>
																				<tr>
																					<td background="">【 <span class="bold1">花
																							材</span> 】
																					</td>
																					<td bgcolor="#fafafa" colspan="2"><div
																							align="left"><%=goodsClass.getGoodsmaterial()%></div></td>
																				</tr>
																				<tr>
																					<td background="tourist/1Image.files/line.gif"
																						colspan="3" height="1"></td>
																				</tr>
																				<tr>
																					<td background="">【 <span class="bold1">包
																							装</span> 】
																					</td>
																					<td bgcolor="#fafafa" colspan="2"><div
																							align="left"><%=goodsClass.getGoodsPackage()%></div></td>
																				</tr>
																				<tr>
																					<td background="tourist/1Image.files/line.gif"
																						colspan="3" height="1"></td>
																				</tr>
																				<tr>
																					<td background="">【 <span class="bold1">花
																							语</span> 】
																					</td>
																					<td bgcolor="#fafafa" colspan="2"><div
																							align="left"><%=goodsClass.getGoodsLanguage()%></div></td>
																				</tr>
																				<tr>
																					<td background="tourist/1Image.files/line.gif"
																						colspan="3" height="1"></td>
																				</tr>
																				<tr>
																					<td background="">【 <span class="bold1">价
																							格</span> 】
																					</td>
																					<td width="80%" bgcolor="#fafafa"><div
																							align="left"><%=goodsClass.getGoodsPrice()%></div></td>
																				</tr>
																				<tr>
																					<td background="tourist/1Image.files/line.gif"
																						colspan="3" height="1"></td>
																				</tr>
																			</tbody>

																			<tbody>
																				<tr>
																					<td width="20%" background="">【 <span
																						class="bold1">商品积分</span> 】
																					</td>
																					<td width="80%" bgcolor="#fafafa"><div
																							align="left"><%=goodsClass.getGoodsCent()%></div></td>
																				</tr>
																				<tr>
																					<td background="tourist/1Image.files/line.gif"
																						colspan="3" height="1"></td>
																				</tr>
																				<tr>
																					<td background="">【 <span class="bold1">配送范围</span>
																						】
																					</td>
																					<td bgcolor="#fafafa"><div align="left">北京市各市区，配送全国各大中城市</div></td>
																				</tr>
																				<tr>
																					<td background="tourist/1Image.files/line.gif"
																						colspan="3" height="1"></td>
																				</tr>
																				<tr>
																					<td background="">【 <span class="bold1">适用场合</span>
																						】
																					</td>
																					<td bgcolor="#fafafa"><div align="left">爱情
																							| 生日 | 思念 | 祝福 | 友情 | 会议</div></td>
																				</tr>
																				<tr>
																					<td background="tourist/1Image.files/line.gif"
																						colspan="3" height="1"></td>
																				</tr>
																				<tr>
																					<td background="">【 <span class="bold1">商品状态</span>
																						】
																					</td>
																					<td bgcolor="#fafafa"><div align="left">上架
																						</div></td>
																				</tr>
																				<tr>
																					<td background="tourist/1Image.files/line.gif"
																						colspan="3" height="1"></td>
																				</tr>
																				<tr>
																					<td colspan="2" height="30">
																						<div align="right">
																							<span class="style1">添加至购物车</span> 
																							<input type="submit" value="添  加" >
																						</div>
																					</td>
																				</tr>
																			</tbody>
																		</table>
																		</form>
																	</td>
																</tr>
																<tr>
																	<td><img height="32" alt=""
																		src="tourist/1Image.files/list_r5_c1.gif" width="564"
																		border="0" name="list_r5_c1"></td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
											</tbody>
										</table>
										<table cellspacing="0" cellpadding="0" width="100%" border="0">
											<tbody>
												<tr>
													<td background="tourist/1Image.files/bj_x1.gif" height="1"></td>
												</tr>
												<tr>
													<td bgcolor="#e8e8a4">&nbsp;</td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
								<tr>
									<td background="tourist/1Image.files/bj_x1.gif" height="1"></td>
								</tr>
							</tbody>
						</table>
					</div>
				</td>
			</tr>
		</tbody>
	</table>

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
									href="../admin/CheckLogin.jsp">管理员登陆</a></b></font></span>
					</div></td>
			</tr>
			<tr>
				<td height="31" bgcolor="#f5f5f5"><div align="center">Copyright
						© 鲜花礼品网 All Rights Reserved</div></td>
			</tr>
		</tbody>
	</table>
	
</body>
</html>