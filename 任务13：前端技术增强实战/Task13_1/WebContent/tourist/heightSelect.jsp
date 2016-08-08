<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>高级查询页面</title>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

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

.style1 {
	color: #FFFFFF
}
</style>
<script type="text/javascript">
	function check() {
		if (document.getElementById("searchkey").value == "") {
			alert("请输入查询关键字！");
			document.getElementById("searchkey").focus();
			return false;
		}

		return true;
	}
</script>
</head>
<body>
	<table cellspacing="0" cellpadding="0" width="812" align="center"
		bgcolor="#ffffff" border="0">
		<tbody>
			<tr>
				<td><img height="1" alt="" src="../indexImage.files/spacer.gif"
					width="38" border="0"></td>
				<td><img height="1" alt="" src="../indexImage.files/spacer.gif"
					width="63" border="0"></td>
				<td><img height="1" alt="" src="../indexImage.files/spacer.gif"
					width="59" border="0"></td>
				<td><img height="1" alt="" src="../indexImage.files/spacer.gif"
					width="56" border="0"></td>
				<td><img height="1" alt="" src="../indexImage.files/spacer.gif"
					width="62" border="0"></td>
				<td><img height="1" alt="" src="../indexImage.files/spacer.gif"
					width="16" border="0"></td>
				<td><img height="1" alt="" src="../indexImage.files/spacer.gif"
					width="44" border="0"></td>
				<td><img height="1" alt="" src="../indexImage.files/spacer.gif"
					width="77" border="0"></td>
				<td><img height="1" alt="" src="../indexImage.files/spacer.gif"
					width="82" border="0"></td>
				<td><img height="1" alt="" src="../indexImage.files/spacer.gif"
					width="77" border="0"></td>
				<td><img height="1" alt="" src="../indexImage.files/spacer.gif"
					width="80" border="0"></td>
				<td><img height="1" alt="" src="../indexImage.files/spacer.gif"
					width="72" border="0"></td>
				<td><img height="1" alt="" src="../indexImage.files/spacer.gif"
					width="34" border="0"></td>
			</tr>
			<tr>
				<td colspan="6" rowspan="2"><img height="79" alt=""
					src="../indexImage.files/title_r1_c1.gif" width="294" border="0"
					name="title_r1_c1"></td>
				<td bgcolor="#ffffff" colspan="7">
					<div align="right">
						<a name="top"></a><a href="<%=path%>/register/cart.jsp"><img
							height="20" src="blessingImage.files/top_cart.gif" width="76"
							border="0"></a> <a onfocus="this.blur()" href="<%=path%>/register/checkMyInfo.jsp"><img
							height="20" src="blessingImage.files/top_my.gif" width="76"
							border="0"></a> <a onfocus="this.blur()" href="<%=path%>/tourist/help.jsp"><img
							height="20" src="blessingImage.files/top_faq.gif" width="76"
							border="0"></a> <a onfocus="this.blur()"
							href="<%=path%>/logout.action"><img height="20"
							src="blessingImage.files/top_wh.gif" width="76" border="0"></a>
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
					src="<%=path%>/indexImage.files/title_r2_c1.gif" width="38" border="0"
					name="title_r2_c1"></td>
				<td><a href="<%=path%>/index.jsp"><img height="27" alt=""
						src="<%=path%>/indexImage.files/title_r2_c2.gif" width="63" border="0"
						name="title_r2_c2"></a></td>
				<td colspan="11"><a href="getProduce.action"><img
						height="27" alt="" src="<%=path%>/tourist/blessingImage.files/title_r2_c10.gif"
						width="77" border="0" name="title_r2_c10"></a><a
					href="<%=path%>/getLeaveLanguage.action"><img height="27" alt=""
						src="<%=path%>/indexImage.files/title_r2_c11.gif" width="80" border="0"
						name="title_r2_c11"></a><a href="flowersLanguage.jsp"><img
						height="27" alt="" src="../indexImage.files/title_r2_c12.gif"
						width="72" border="0" name="title_r2_c12"></a><img height="27"
					alt="" src="<%=path%>/indexImage.files/title_r2_c13.gif" width="482"
					border="0" name="title_r2_c13"></td>
			</tr>
		</tbody>
	</table>
	<table bordercolor="#009900" cellspacing="0" cellpadding="0"
		width="812" align="center" border="1">
		<tbody>
			<tr>
				<td bordercolor="#ffffff" bgcolor="#ffffff">
					<table cellspacing="0" cellpadding="0" width="480" align="center"
						border="0">
						<tbody>
							<tr>
								<td valign="top"><br>
									<div align="center">
										<br> <br>
										<table cellspacing="0" cellpadding="1" width="489"
											align="center" border="0">
											<tbody>
												<tr>
													<td>
														<form name="form2" action="getGoodsByHeightSelect.action?currentPage=1"
															method="post" onsubmit="return check()">
															<table cellspacing="2" cellpadding="2" width="60%"
																align="center" bgcolor="#ffffff" border="0">
																<tbody>
																	<tr>
																		<td style="padding-left: 6px" width="36%">
																			<div align="center">关 健 字：</div>
																		</td>
																		<td style="padding-left: 6px" width="64%"><input
																			id="searchkey" name="searchBy"></td>
																	</tr>
																	<tr>
																		<td style="PADDING-LEFT: 6px" width="36%">
																			<div align="center">查找方式：</div>
																		</td>
																		<td style="padding-left: 6px" width="64%"><select
																			name="searchOption">
																				<option value="商品名称" selected="selected">商品名称</option>
																				<option value="花材">花材</option>
																		</select></td>
																	</tr>
																	<tr>
																		<td style="padding-left: 6px" width="36%">
																			<div align="center">价格范围：</div>
																		</td>
																		<td style="padding-left: 6px" width="64%"><select
																			name="goodsPrice">
																				<option value="20">20元以下</option>
																				<option value="30">30元以下</option>
																				<option value="50" selected="selected">50元以下</option>
																				<option value="100">100元以下</option>
																				<option value="500">500元以下</option>
																				<option value="1000">1000元以下</option>
																				<option value="10000">10000元以下</option>
																				<option value="100000">100000元以下</option>
																		</select></td>
																	</tr>
																	<tr>
																		<td style="padding-left: 6px" width="36%" height="18">
																			<div align="center">商品分类：</div>
																		</td>
																		<td style="padding-left: 6px" width="64%"><select
																			name="sortName">
																				<option value="%" selected="selected">所有分类</option>
																				<option value="浪漫爱情">浪漫爱情</option>
																				<option value="生日快乐">生日快乐</option>
																				<option value="祝福用花">祝福用花</option>
																				<option value="慰问探望">慰问探望</option>
																				<option value="致谢致歉">致谢致歉</option>
																				<option value="家居生活">家居生活</option>
																				<option value="哀思怀念">哀思怀念</option>
																				<option value="婚礼庆典">婚礼庆典</option>
																				<option value="商业花篮">商业花篮</option>
																				<option value="会议鲜花">会议鲜花</option>
																		</select></td>
																	</tr>
																	<tr>
																		<td style="padding-left: 6px" colspan="2" height="18">
																			<div align="center">
																				<input type="image" height="18" width="54"
																					src="../indexImage.files/kscx.gif" border="0"
																					name="submit">
																			</div>
																		</td>
																	</tr>
																</tbody>
															</table>
														</form>
											</tbody>
										</table>
										<br>
									</div></td>
							</tr>
						</tbody>
					</table> <br>
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
									href="../admin/CheckLogin.jsp">管理员登录</a></b></font></span>
					</div></td>
			</tr>
			<tr>
				<td height="31" bgcolor="#f5f5f5"><div align="center">Copyright
						© All Rights Reserved</div></td>
			</tr>
		</tbody>
	</table>
</body>
</html>