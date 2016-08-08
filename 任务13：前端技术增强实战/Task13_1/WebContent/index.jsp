<%@page import="com.gzj.entity.Users"%>
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
<title>鲜花订购系统</title>

<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript">
	function check() {
		if (document.getElementById("usersName").value == "") {
			alert("请输入用户名！");
			document.getElementById("usersName").focus();
			return false;
		}
		
		if (document.getElementById("usersPass").value == "") {
			alert("请输入密码！");
			document.getElementById("usersPass").focus();
			return false;
		}
		return true;
	}

</script>

</head>
<body>
	<div id="containdiv">
	
		<table cellspacing="0" cellpadding="0" width="812" align="center" bgcolor="#ffffff" border="0">
			<tbody>
				<tr>
					<td><img height="1" alt="" src="indexImage.files/spacer.gif"
						width="38" border="0"></td>
					<td><img height="1" alt="" src="indexImage.files/spacer.gif"
						width="63" border="0"></td>
					<td><img height="1" alt="" src="indexImage.files/spacer.gif"
						width="59" border="0"></td>
					<td><img height="1" alt="" src="indexImage.files/spacer.gif"
						width="56" border="0"></td>
					<td><img height="1" alt="" src="indexImage.files/spacer.gif"
						width="62" border="0"></td>
					<td><img height="1" alt="" src="indexImage.files/spacer.gif"
						width="16" border="0"></td>
					<td><img height="1" alt="" src="indexImage.files/spacer.gif"
						width="44" border="0"></td>
					<td><img height="1" alt="" src="indexImage.files/spacer.gif"
						width="77" border="0"></td>
					<td><img height="1" alt="" src="indexImage.files/spacer.gif"
						width="82" border="0"></td>
					<td><img height="1" alt="" src="indexImage.files/spacer.gif"
						width="77" border="0"></td>
					<td><img height="1" alt="" src="indexImage.files/spacer.gif"
						width="80" border="0"></td>
					<td><img height="1" alt="" src="indexImage.files/spacer.gif"
						width="72" border="0"></td>
					<td><img height="1" alt="" src="indexImage.files/spacer.gif"
						width="34" border="0"></td>
				</tr>
				<tr>
					<td colspan="6" rowspan="2">
						<img height="79" alt="" src="indexImage.files/title_r1_c1.gif" width="294" border="0" name="title_r1_c1">
					</td>
					<td bgcolor="#ffffff" colspan="7">
						<div align="right">
							<a name="top"></a>
							<a href="register/cart.jsp">
								<img height="20" src="indexImage.files/top_cart.gif" width="76" border="0">
							</a>
							<a href="register/checkMyInfo.jsp">
								<img height="20" src="indexImage.files/top_my.gif" width="76" border="0">
							</a> 
							<a href="tourist/help.jsp">
								<img height="20" src="indexImage.files/top_faq.gif" width="76" border="0">
							</a> 
							<a href="logout.action">
								<img height="20" src="indexImage.files/top_wh.gif" width="76" border="0">
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
		<table height=138 cellSpacing=0 cellPadding=0 width=760 align=center
			bgColor=#ffffff border=0>
			<tbody>
				<tr>
					<td><object
							classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="812" height="222">
							<param name="movie" value="heart.swf">
							<param name="quality" value="high">
							<embed src="heart.swf" allownetworking="internal" width="812" height="222"></embed>
						</object>
						
					</td>
				</tr>
			</tbody>
		</table>
		<table cellspacing="0" cellpadding="0" width="812" align="center" border="0">
			<tbody>
				<tr>
					<td valign="top" bordercolor="#eaeaea" width="170" bgcolor="#eaeaea">
						<table cellspacing="1" cellpadding="0" width="100%" border="0">
							<tbody>
								<tr>
									<td height="3"></td>
								</tr>
							</tbody>
						</table> 
							
						<table cellspacing="0" cellpadding="0" width="156" align="center" border="0">
							<tbody>
								<tr>
									<td colspan="3"></td>
								</tr>
								<tr>
									<td bgcolor="#9b8840" colspan="3"></td>
								</tr>
								<tr>
									<td width="1" bgcolor="#9b8840"></td>
									<td bgcolor="#ffffff">
										<table cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
											<tbody>
												<tr>
													<td background="indexImage.files/bj_x.gif" height="1"></td>
												</tr>
												<tr>
													<td height="22">
														<table height="20" cellspacing="0" cellpadding="0" width="154">
															<tbody>
																<tr>																	
																	<td colspan="2">
																		<div align="center">会员注册</div>
																	</td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
												<tr>
													<td background="indexImage.files/bj_x.gif" height="1"></td>
												</tr>
												<tr>
													<td height="41">
														<div align="center">
															<form action="<%=path%>/login.action" method="post" onsubmit="return check()">
															<table cellspacing="1" cellpadding="1" width="95%" align="center" border="0">
																<tbody>
																	<tr>
																		<td align="center" height="22">
																			<font color="#999999">您好，购买鲜花请先登录</font>
																		</td>
																	</tr>
																	<tr>
																		<td align="center">
																			用户名：<br/> 
																			<input style="border-right: #ffffff 1px groove; border-top: #ffffff 1px groove; border-left: #ffffff 1px groove; color: #333333; border-bottom: #ffffff 1px groove; height: 18px; background-color: #ffcc66"
																				maxlength="20" size="10" name="usersName" id="usersName">
																		</td>
																	</tr>
																	<tr>
																		<td align="center">
																			密 码：<br/> 
																			<input style="border-right: #ffffff 1px groove; border-top: #ffffff 1px groove; border-left: #ffffff 1px groove; color: #333333; border-bottom: #ffffff 1px groove; height: 18px; background-color: #ffcc66"
																				type="password" maxlength="20" size="10" name="usersPass" id="usersPass">
																		</td>
																	</tr>
																	<tr>
																		<td align="center" height="38">
																			<input type="image" height="19" width="45" src="indexImage.files/login_bt_login.gif"
																				border="0" name="imageField"> 
																			<a href="register/register.jsp">
																				<img height="19" src="indexImage.files/login_bt_zc.gif" width="45" border="0">
																			</a>
																		</td>
																	</tr>
																</tbody>
															</table>
															</form>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</td>
									<td width="1" bgcolor="#9b8840"></td>
								</tr>
							</tbody>
						</table>
						<table cellspacing="1" cellpadding="0" width="156" align="center" border="0">
							<tbody>
								<tr>
									<td bgcolor="#ffcc00" height="5"></td>
								</tr>
							</tbody>
						</table>
						<table cellspacing="1" cellpadding="0" width="100%" border="0">
							<tbody>
								<tr>
									<td height="5"></td>
								</tr>
							</tbody>
						</table>
						<table cellspacing="0" cellpadding="0" width="156" align="center" border="0">
							<tbody>
								<tr>
									<td bgcolor="#558d40" colspan="3" height="1"></td>
								</tr>
								<tr>
									<td width="1" bgcolor="#99cc33"></td>
									<td bgcolor="#ffffff">
										<table cellspacing="0" cellpadding="0" width="100%" border="0">
											<tbody>
												<tr>
													<td background="indexImage.files/bj_x.gif" height="1"></td>
												</tr>
												<tr>
													<td height="14">
														<table height="20" cellspacing="0" cellpadding="0" width="154" bgcolor="#99d767">
															<tbody>
																<tr>																	
																	<td bgcolor="#99d767" colspan="2">
																		<div align="center"><img height="27"
																		src="indexImage.files/flower_list_title.gif" width="85"></div>
																	</td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
												<tr>
													<td background="indexImage.files/bj_x.gif" height="1"></td>
												</tr>
												<tr>
													<td>
														<table cellspacing="0" cellpadding="0" width="95%" align="center" border="0">
															<tbody>
																<tr>
																	<td height="6"></td>
																</tr>
																<tr>
																	<td align="center" height="20">
																		<div align="center"></div>
																		<table cellspacing="0" cellpadding="0" width="100%"
																			border="0">
																			<tbody>																				
																				<tr>
																					<td align="right" width="49%" height="22"><a
																						href="getGoodsBySort.action?searchBy=浪漫爱情&currentPage=1"																						
																						target="_self">浪漫爱情</a></td>
																					<td align="left" width="51%" height="22"><font
																						color="#ff6600">|</font>&nbsp;<a
																						href="getGoodsBySort.action?searchBy=生日快乐&currentPage=1"
																						target="_self">生日快乐</a></td>
																				</tr>
																				<tr>
																					<td align="right" width="49%" height="22"><a
																						href="getGoodsBySort.action?searchBy=祝福用花&currentPage=1"
																						target="_self">祝福用花</a></td>
																					<td align="left" width="51%" height="22"><font
																						color="#ff6600">|</font>&nbsp;<a
																						href="getGoodsBySort.action?searchBy=慰问探望&currentPage=1"
																						target="_self">慰问探望</a></td>
																				</tr>
																				<tr>
																					<td align="right" width="49%" height="22"><a
																						href="getGoodsBySort.action?searchBy=致谢致歉&currentPage=1"
																						target="_self">致谢致歉</a></td>
																					<td align="left" width="51%" height="22"><font
																						color="#ff6600">|</font>&nbsp;<a
																						href="getGoodsBySort.action?searchBy=家居生活&currentPage=1"
																						target="_self">家居生活</a></td>
																				</tr>
																				<tr>
																					<td align="right" width="49%" height="22"><a
																						href="getGoodsBySort.action?searchBy=哀思怀念&currentPage=1"
																						target="_self">哀思怀念</a></td>
																					<td align="left" width="51%" height="22"><font
																						color="#ff6600">|</font>&nbsp;<a
																						href="getGoodsBySort.action?searchBy=婚礼庆典&currentPage=1"
																						target="_self">婚礼庆典</a></td>
																				</tr>
																				<tr>
																					<td align="right" width="49%" height="22"><a
																						href="getGoodsBySort.action?searchBy=商业花篮&currentPage=1"
																						target="_self">商业花篮</a></td>
																					<td align="left" width="51%" height="22"><font
																						color="#ff6600">|</font>&nbsp;<a
																						href="getGoodsBySort.action?searchBy=会议鲜花&currentPage=1"
																						target="_self">会议鲜花</a></td>
																				</tr>
																				<tr>
																					<td colspan="2" height="1"></td>
																				</tr>
																			</tbody>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td></td>
																</tr>
																<tr>
																	<td height="1"></td>
																</tr>
																<tr>
																	<td height="1"></td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
											</tbody>
										</table>
									</td>
									<td width="1" bgcolor="#99cc33"></td>
								</tr>
							</tbody>
						</table>
						<table height="10" cellspacing="0" cellpadding="0" width="156" align="center" border="0">
							<tbody>
								<tr>
									<td width="1" bgcolor="#00cc66"></td>
								</tr>
							</tbody>
						</table>
						<table cellspacing="1" cellpadding="0" width="156" align="center" border="0">
							<tbody>
								<tr>
									<td height="5"></td>
								</tr>
							</tbody>
						</table>
						<table cellspacing="0" cellpadding="0" width="156" align="center" border="0">
							<tbody>
								<tr>
									<td colspan="3"></td>
								</tr>
								<tr>
									<td bgcolor="#9b8840" colspan="3"></td>
								</tr>
								<tr>
									<td width="1" bgcolor="#9b8840"></td>
									<td bgcolor="#ffffff">
										<table cellspacing="0" cellpadding="0" width="100%"
											align="center" border="0">
											<tbody>
												<tr>
													<td background="indexImage.files/bj_x.gif" height="1"></td>
												</tr>
												<tr>
													<td height="22">
														<table height="20" cellspacing="0" cellpadding="0" width="154" bgcolor="#d1c58f">
															<tbody>
																<tr>																	
																	<td colspan="2">
																		<div align="center">按照价格（会员价）分类</div>
																	</td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
												<tr>
													<td height="1"></td>
												</tr>
												<tr>
													<td height="75">
														<div align="center">
															<table cellspacing="0" cellpadding="0" width="90%" border="0">
																<tbody>
																	<tr>
																		<td bgcolor="#99cc33">
																			<table height="70" cellspacing="1" cellpadding="0" width="100%" border="0">
																				<tbody>
																					<tr bgcolor="#ffffff">
																						<td>
																							<div align="center">
																								<a href="getGoodsByPrice.action?searchBy=0-100&currentPage=1"
																									target="_self">100元以内</a>
																							</div>
																						</td>
																						<td>
																							<div align="center">
																								<a href="getGoodsByPrice.action?searchBy=100-200&currentPage=1"
																									target="_self">100-200元</a>
																							</div>
																						</td>
																					</tr>
																					<tr bgcolor="#ffffff">
																						<td>
																							<div align="center">
																								<a href="getGoodsByPrice.action?searchBy=200-300&currentPage=1"
																									target="_self">200-300元</a>
																							</div>
																						</td>
																						<td>
																							<div align="center">
																								<a href="getGoodsByPrice.action?searchBy=300-500&currentPage=1"
																									target="_self">300-500元</a>
																							</div>
																						</td>
																					</tr>
																					<tr bgcolor="#ffffff">
																						<td>
																							<div align="center">
																								<a href="getGoodsByPrice.action?searchBy=500-800&currentPage=1"
																									target="_self">500-800元</a>
																							</div>
																						</td>
																						<td>
																							<div align="center">
																								<a href="getGoodsByPrice.action?searchBy=800-10000&currentPage=1"
																									target="_self">800元以上</a>
																							</div>
																						</td>
																					</tr>
																				</tbody>
																			</table>
																		</td>
																	</tr>
																</tbody>
															</table>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</td>
									<td width="1" bgcolor="#9b8840"></td>
								</tr>
							</tbody>
						</table>
						<table cellspacing="1" cellpadding="0" width="156" align="center" border="0">
							<tbody>
								<tr>
									<td bgcolor="#9b8840" height="5"></td>
								</tr>
							</tbody>
						</table>
						<table cellspacing="1" cellpadding="0" width="156" align="center" border="0">
							<tbody>
								<tr>
									<td height="5"></td>
								</tr>
							</tbody>
						</table>
						<table cellspacing="0" cellpadding="0" width="156" align="center" border="0">
							<tbody>
								<tr>
									<td colspan="3"></td>
								</tr>
								<tr>
									<td bgcolor="#9b8840" colspan="3"></td>
								</tr>
								<tr>
									<td width="1" bgcolor="#99ff33"></td>
									<td bgcolor="#ffffff">
										<table cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
											<tbody>
												<tr>
													<td background="indexImage.files/bj_x.gif" height="1"></td>
												</tr>
												<tr>
													<td height="22">
														<table height="20" cellspacing="0" cellpadding="0" width="154" bgcolor="#d1c58f">
															<tbody>
																<tr>																	
																	<td bgcolor="#cccc99" colspan="2">
																		<div align="center">按花材选购</div>
																	</td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
												<tr>
													<td height="1"></td>
												</tr>
												<tr>
													<td height="75">
														<div align="center">
															<table cellspacing="0" cellpadding="0" width="90%" border="0">
																<tbody>
																	<tr>
																		<td bgcolor="#99cc33">
																			<table height="93" cellspacing="1" cellpadding="0" width="100%" border="0">
																				<tbody>
																					<tr bgcolor="#ffffff">
																						<td>
																							<div align="center">
																								<a href="getGoodsByMaterial.action?searchBy=玫瑰&currentPage=1"
																									target="_self">玫瑰</a>
																							</div>
																						</td>
																						<td>
																							<div align="center">
																								<a href="getGoodsByMaterial.action?searchBy=百合&currentPage=1"
																									target="_self">百合</a>
																							</div>
																						</td>
																					</tr>
																					<tr bgcolor="#ffffff">
																						<td>
																							<div align="center">
																								<a href="getGoodsByMaterial.action?searchBy=康乃馨&currentPage=1"
																									target="_self">康乃馨</a>
																							</div>
																						</td>
																						<td>
																							<div align="center">
																								<a href="getGoodsByMaterial.action?searchBy=扶朗&currentPage=1"
																									target="_self">扶朗</a>
																							</div>
																						</td>
																					</tr>
																					<tr bgcolor="#ffffff">
																						<td>
																							<div align="center">
																								<a href="getGoodsByMaterial.action?searchBy=马蹄莲&currentPage=1"
																									target="_self">马蹄莲</a>
																							</div>
																						</td>
																						<td>
																							<div align="center">
																								<a href="getGoodsByMaterial.action?searchBy=郁金香&currentPage=1"
																									target="_self">郁金香</a>
																							</div>
																						</td>
																					</tr>
																					<tr bgcolor="#ffffff">
																						<td>
																							<div align="center">
																								<a href="getGoodsByMaterial.action?searchBy=花篮&currentPage=1"
																									target="_self">花篮</a>
																							</div>
																						</td>
																						<td>
																							<div align="center">
																								<a href="getGoodsByMaterial.action?searchBy=蛋糕&currentPage=1"
																									target="_self">蛋糕</a>
																							</div>
																						</td>
																					</tr>
																				</tbody>
																			</table>
																		</td>
																	</tr>
																</tbody>
															</table>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</td>
									<td width="1" bgcolor="#99ff33"></td>
								</tr>
							</tbody>
						</table>
						<table cellspacing="1" cellpadding="0" width="156" align="center" border="0">
							<tbody>
								<tr>
									<td bgcolor="#cccc66" height="5"></td>
								</tr>
							</tbody>
						</table>
						<table cellspacing="1" cellpadding="0" width="156" align="center" border="0">
							<tbody>
								<tr>
									<td height="5"></td>
								</tr>
							</tbody>
						</table>
						<table cellspacing="0" cellpadding="0" width="100%" border="0">
							<tbody>
								<tr>
									<td background="indexImage.files/bj_x.gif" height="1"></td>
								</tr>
								<tr>
									<td bgcolor="#ffea95" height="22">
										<table height="20" cellspacing="0" cellpadding="0" width="170">
											<tbody>
												<tr>													
													<td colspan="2">
														<div align="center">最新公告</div>
													</td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
								<tr>
									<td background="indexImage.files/bj_x.gif" height="1"></td>
								</tr>
								<tr>
									<td>
										<table cellspacing="0" cellpadding="0" width="94%" align="center" bgcolor="#ffffff" border="0">
											<tbody>
												<tr>
													<td width="6%">&nbsp;</td>
													<td width="94%"><marquee id="info"
															onmouseover="info.stop()" onmouseout="info.start()"
															scrollamount="2" direction="up" width="100%" height="106"
															style="height: 106px; width: 100%;">
															.凡在本网购买鲜花者出现任何质量问题,本网愿意承担一切责任.
															<p></p>
															<p>我们的宗旨是“ 好的花材，好的花艺,好的承诺
																”。专业的插花师保证花的造型符合时代潮流；优质的花材保证让您的鲜花保持实时新鲜度;专业的送花人员保证让您的心情愉快。</p>
															<p>我们认为:我们为您送的不仅是鲜花,更是一份服务,一份心情,一份心意.</p>
														</marquee></td>
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
									<td background="indexImage.files/bj_x.gif" height="1"></td>
								</tr>
								<tr>
									<td bgcolor="#ffefbf" height="22">
										<table height="20" cellspacing="0" cellpadding="0" width="170">
											<tbody>
												<tr>													
													<td colspan="2">
														<div align="center">商品搜索</div>
													</td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
								<tr>
									<td background="indexImage.files/bj_x.gif" height="1"></td>
								</tr>
								<tr>
									<td>
										<form name="form2" action="getGoodsByLowerSelect.action?currentPage=1" method="post">
										<table cellspacing="1" cellpadding="1" width="94%" align="center" bgcolor="#ffffff" border="0">
											<tbody>
												<tr>
													<td colspan="2" height="2px;"></td>
												</tr>
												<tr>
													<td align="center">关键字词：
														<input style="BORDER-RIGHT: #ffffff 1px groove; BORDER-TOP: #ffffff 1px groove; BORDER-LEFT: #ffffff 1px groove;margin-top: 5px; COLOR: #333333; BORDER-BOTTOM: #ffffff 1px groove; HEIGHT: 18px; BACKGROUND-COLOR: #ffffff"
															size="10" name="goodsName">
													</td>
												</tr>
												<tr>
													<td colspan="2" height="2px;"></td>
												</tr>
												<tr>
													<td align="center">查询分类： <select name="sortName">
															<option value="%" >所有分类</option>
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
													</select>
													</td>
												</tr>
												<tr>
													<td align="center" height="38"><input type="image"
														height="18" width="54" src="indexImage.files/kscx.gif"
														border="0" name="submit"> &nbsp; <a
														href="tourist/heightSelect.jsp"><img height="18"
															src="indexImage.files/gjcx.gif" width="54" border="0"></a>
													</td>
												</tr>
											</tbody>
										</table>
										</form>
									</td>
								</tr>
							</tbody>
						</table>							
						
						<p></p>
					</td>
					<td valign="top">
						<div align="center">
							<table cellspacing="0" cellpadding="0" width="100%" border="0">
								<tbody>
									<tr>
										<td background="indexImage.files/bj_x.gif" height="1"></td>
									</tr>
									<tr>
										<td height="22">
											<div align="center">
											<marquee>
											<%
												Users users=(Users)session.getAttribute("Users");
												if(users==null){
													out.println("顾客您好，购买商品请先登录");
												}else{
													out.println("登录成功，"+users.getUsersName()+" 您好，欢迎您使用本网站，希望您在这里购物愉快~");
												}												
											%>
											</marquee>
											</div>
										</td>
									</tr>
									<tr>
										<td background="indexImage.files/bj_x.gif" height="1"></td>
									</tr>
								</tbody>
							</table>
							<table cellspacing="0" cellpadding="5" width="100%" align="center" border="0">
								<tbody>
									<tr>
										<td valign="top" height="189">
											<table cellspacing="0" cellpadding="3" width="100%" border="0">
												<tbody>
													<tr>
														<td height="20">
															<div align="left">
																<b><font color="#ff9900">最新推荐特价商品</font></b>
															</div>															
														</td>
													</tr>
													<tr>
														<td align="center">
															<table cellspacing="0" cellpadding="0" width="100" border="0">
																<tbody>
																	<tr>
																		<td bgcolor="#c2c0c0">
																			<div align="center">
																				<table cellspacing="1" cellpadding="0" width="100" border="0">
																					<tbody>
																						<tr>
																							<td>
																								<div align="center">
																									<a href="getGood.action?goodsId=3100"
																										target="_self"><img height="100"
																										alt="生日祝福/鲜花"
																										src="indexImage.files/20059711102747682.jpg"
																										width="100" border="0"></a>
																								</div>
																							</td>
																						</tr>
																					</tbody>
																				</table>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td height="22">
																			<div align="center">
																				<a href="getGood.action?goodsId=3100" target="_self"><font
																					color="#990000">&nbsp;生日祝福/鲜花</font></a>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td height="11">
																			<div align="center">
																				&nbsp;单价：<font color="#ff6600">92.00元</font><br>
																				<table cellspacing="0" cellpadding="0">
																					<tbody>
																						<tr>
																							<td><a href="getGood.action?goodsId=3100"
																								target="_self"><img height="17"
																									src="indexImage.files/detail.gif" width="40"
																									border="0"></a>&nbsp;</td>
																						</tr>
																					</tbody>
																				</table>
																			</div>
																		</td>
																	</tr>
																</tbody>
															</table></td>
														<td align="center">
															<table cellspacing="0" cellpadding="0" width="100" border="0">
																<tbody>
																	<tr>
																		<td bgcolor="#c2c0c0">
																			<div align="center">
																				<table cellspacing="1" cellpadding="0" width="100"
																					border="0">
																					<tbody>
																						<tr>
																							<td>
																								<div align="center">
																									<a href="getGood.action?goodsId=3005"
																										target="_self"><img height="100"
																										alt="留恋/鲜花"
																										src="indexImage.files/200571214213812729.jpg"
																										width="100" border="0"></a>
																								</div>
																							</td>
																						</tr>
																					</tbody>
																				</table>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td height="22">
																			<div align="center">
																				<a href="getGood.action?goodsId=3005" target="_self"><font
																					color="#990000">&nbsp;留恋/鲜花</font></a>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td height="11">
																			<div align="center">
																				&nbsp;单价：<font color="#ff6600">82.00元</font><br>
																				<table cellspacing="0" cellpadding="0">
																					<tbody>
																						<tr>
																							<td><a href="getGood.action?goodsId=3005"
																								target="_self"><img height="17"
																									src="indexImage.files/detail.gif" width="40"
																									border="0"></a>&nbsp;</td>
																						</tr>
																					</tbody>
																				</table>
																			</div>
																		</td>
																	</tr>
																</tbody>
															</table></td>
														<td align="center">
															<table cellspacing="0" cellpadding="0" width="100" border="0">
																<tbody>
																	<tr>
																		<td bgcolor="#c2c0c0">
																			<div align="center">
																				<table cellspacing="1" cellpadding="0" width="100" border="0">
																					<tbody>
																						<tr>
																							<td>
																								<div align="center">
																									<a href="getGood.action?goodsId=3131"
																										target="_self"><img height="100"
																										alt="幸福连连/鲜花"
																										src="indexImage.files/200543021412871815.jpg"
																										width="100" border="0"></a>
																								</div>
																							</td>
																						</tr>
																					</tbody>
																				</table>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td height="22">
																			<div align="center">
																				<a href="getGood.action?goodsId=3131" target="_self"><font
																					color="#990000">&nbsp;幸福连连/鲜花</font></a>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td height="11">
																			<div align="center">
																				&nbsp;单价：<font color="#ff6600">82.00元</font><br>
																				<table cellspacing="0" cellpadding="0">
																					<tbody>
																						<tr>
																							<td><a href="getGood.action?goodsId=3131"
																								target="_self"><img height="17"
																									src="indexImage.files/detail.gif" width="40"
																									border="0"></a>&nbsp;</td>
																						</tr>
																					</tbody>
																				</table>
																			</div>
																		</td>
																	</tr>
																</tbody>
															</table></td>
														<td align="center">
															<table cellspacing="0" cellpadding="0" width="100" border="0">
																<tbody>
																	<tr>
																		<td bgcolor="#c2c0c0">
																			<div align="center">
																				<table cellspacing="1" cellpadding="0" width="100" border="0">
																					<tbody>
																						<tr>
																							<td>
																								<div align="center">
																									<a href="getGood.action?goodsId=3127"
																										target="_self"><img height="100"
																										alt="如此爱你/鲜花"
																										src="indexImage.files/2004122617233185391.jpg"
																										width="100" border="0"></a>
																								</div>
																							</td>
																						</tr>
																					</tbody>
																				</table>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td height="22">
																			<div align="center">
																				<a href="getGood.action?goodsId=3127" target="_self"><font
																					color="#990000">&nbsp;如此爱你/鲜花</font></a>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td height="11">
																			<div align="center">
																				&nbsp;单价：<font color="#ff6600">128.00元</font><br>
																				<table cellspacing="0" cellpadding="0">
																					<tbody>
																						<tr>
																							<td><a href="getGood.action?goodsId=3127"
																								target="_self"><img height="17"
																									src="indexImage.files/detail.gif" width="40"
																									border="0"></a>&nbsp;</td>
																						</tr>
																					</tbody>
																				</table>
																			</div>
																		</td>
																	</tr>
																</tbody>
															</table></td>
														<td align="center">
															<table cellspacing="0" cellpadding="0" width="100" border="0">
																<tbody>
																	<tr>
																		<td bgcolor="#c2c0c0">
																			<div align="center">
																				<table cellspacing="1" cellpadding="0" width="100" border="0">
																					<tbody>
																						<tr>
																							<td>
																								<div align="center">
																									<a href="getGood.action?goodsId=3126"
																										target="_self"><img height="100"
																										alt="亲情问候/鲜花"
																										src="indexImage.files/20041289353721316.jpg"
																										width="100" border="0"></a>
																								</div>
																							</td>
																						</tr>
																					</tbody>
																				</table>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td height="22">
																			<div align="center">
																				<a href="getGood.action?goodsId=3126" target="_self"><font
																					color="#990000">&nbsp;亲情问候/鲜花</font></a>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td height="11">
																			<div align="center">
																				&nbsp;单价：<font color="#ff6600">78.00元</font><br>
																				<table cellspacing="0" cellpadding="0">
																					<tbody>
																						<tr>
																							<td><a href="getGood.action?goodsId=3126"
																								target="_self"><img height="17"
																									src="indexImage.files/detail.gif" width="40"
																									border="0"></a>&nbsp;</td>
																						</tr>
																					</tbody>
																				</table>
																			</div>
																		</td>
																	</tr>
																</tbody>
															</table></td>
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
										<td background="indexImage.files/bj_x.gif" height="1"></td>
									</tr>
									<tr>
										<td><img height="65" alt="border=0"
												src="indexImage.files/chuntian.gif" width="578" border="0"></td>
									</tr>
								</tbody>
							</table>
							<table cellspacing="0" cellpadding="0" width="100%" border="0">
								<tbody>
									<tr>
										<td background="indexImage.files/bj_x.gif" height="1"></td>
									</tr>
									<tr>
										<td bgcolor="#88d788" height="22">
											<table height="20" cellspacing="0" cellpadding="0" width="387">
												<tbody>
													<tr>														
														<td colspan="3">
															<div align="left"><b><font color="#333333">&nbsp;最新商品上架排行</font></b></div> 
														</td>
														
													</tr>
												</tbody>
											</table>
										</td>
									</tr>
									<tr>
										<td height="1"></td>
									</tr>
									<tr>
										<td>
											<div align="right">
												
												<table bordercolor="#ffffff" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
													<tbody>
														<tr>
															<td align="center">
																<table cellspacing="0" cellpadding="0" width="100%" border="0">
																	<tbody>
																		<tr>
																			<td valign="top" width="300">
																				<table cellspacing="0" cellpadding="0" width="100%">
																					<tbody>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top"><br>
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100" border="0">
																										<tbody>
																											<tr>
																												<td bgcolor="#c2c0c0">
																													<table cellspacing="1" cellpadding="0" width="100" border="0">
																														<tbody>
																															<tr>
																																<td><a
																																	href="getGood.action?goodsId=3085"
																																	target="_self"><img height="100"
																																		alt="爱你,永远 /鲜花"
																																		src="indexImage.files/20063231572455261.jpg"
																																		width="100" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</div></td>
																						</tr>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top">
																								<div align="center">																									
																									<table cellspacing="0" cellpadding="0" width="100%" border="0">
																										<tbody>
																											<tr>
																												<td align="center" height="26"><a
																													href="getGood.action?goodsId=3085" target="_self">爱你,永远
																														/.. </a></td>
																											</tr>
																											<tr>
																												<td align="center" height="17">&nbsp;单价：<font
																													color="#ff6600">138.00元</font></td>
																											</tr>																											
																											<tr>
																												<td height="17">
																													<table cellspacing="0" cellpadding="0" align="center">
																														<tbody>
																															<tr>
																																<td>&nbsp;<a
																																	href="getGood.action?goodsId=3085"
																																	target="_self"><img height="17"
																																		src="indexImage.files/detail.gif"
																																		width="40" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</div>
																							</td>
																						</tr>
																					</tbody>
																				</table>
																			</td>
																			<td valign="top" width="1"
																				background="indexImage.files/bj_x1.gif"></td>
																			<td valign="top" width="300">
																				<table cellspacing="0" cellpadding="0" width="100%">
																					<tbody>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top"><br>
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100" border="0">
																										<tbody>
																											<tr>
																												<td bgcolor="#c2c0c0">
																													<table cellspacing="1" cellpadding="0" width="100" border="0">
																														<tbody>
																															<tr>
																																<td><a
																																	href="getGood.action?goodsId=3128"
																																	target="_self"><img height="100"
																																		alt="天籁之心(粉)/鲜花"
																																		src="indexImage.files/200622614561634555.jpg"
																																		width="100" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</div></td>
																						</tr>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top">
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100%" border="0">
																										<tbody>
																											<tr>
																												<td align="center" height="26"><a
																													href="getGood.action?goodsId=3128" target="_self">天籁之心(粉)..
																												</a></td>
																											</tr>
																											<tr>
																												<td align="center" height="17">&nbsp;单价：<font
																													color="#ff6600">88.00元</font></td>
																											</tr>
																											
																											<tr>
																												<td height="17">
																													<table cellspacing="0" cellpadding="0" align="center">
																														<tbody>
																															<tr>
																																<td>&nbsp;<a
																																	href="getGood.action?goodsId=3128"
																																	target="_self"><img height="17"
																																		src="indexImage.files/detail.gif"
																																		width="40" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																									<font color="#999999"></font>
																								</div>
																							</td>
																						</tr>
																						<tr></tr>
																					</tbody>
																				</table>
																			</td>
																			<td valign="top" width="1">&nbsp;</td>
																			<td valign="top" width="300">
																				<table cellspacing="0" cellpadding="0" width="100%">
																					<tbody>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top"><br>
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100" border="0">
																										<tbody>
																											<tr>
																												<td bgcolor="#c2c0c0">
																													<table cellspacing="1" cellpadding="0" width="100" border="0">
																														<tbody>
																															<tr>
																																<td><a
																																	href="getGood.action?goodsId=3087"
																																	target="_self"><img height="100"
																																		alt="含馨/鲜花"
																																		src="indexImage.files/20061321545846143.jpg"
																																		width="100" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</div></td>
																						</tr>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top">
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100%" border="0">
																										<tbody>
																											<tr>
																												<td align="center" height="26"><a
																													href="getGood.action?goodsId=3087" target="_self">含馨/鲜花
																												</a></td>
																											</tr>
																											<tr>
																												<td align="center" height="17">&nbsp;单价：<font
																													color="#ff6600">158.00元</font></td>
																											</tr>
																											
																											<tr>
																												<td height="17">
																													<table cellspacing="0" cellpadding="0" align="center">
																														<tbody>
																															<tr>
																																<td>&nbsp;<a
																																	href="getGood.action?goodsId=3087"
																																	target="_self"><img height="17"
																																		src="indexImage.files/detail.gif"
																																		width="40" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																									<font color="#999999"></font>
																								</div>
																							</td>
																						</tr>
																						<tr></tr>
																					</tbody>
																				</table>
																			</td>
																			<td valign="top" width="1">&nbsp;</td>
																			<td valign="top" width="300">
																				<table cellspacing="0" cellpadding="0" width="100%">
																					<tbody>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top"><br>
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100" border="0">
																										<tbody>
																											<tr>
																												<td bgcolor="#c2c0c0">
																													<table cellspacing="1" cellpadding="0" width="100" border="0">
																														<tbody>
																															<tr>
																																<td><a
																																	href="getGood.action?goodsId=3097"
																																	target="_self"><img height="100"
																																		alt="倾心/鲜花"
																																		src="indexImage.files/2005971455256445.jpg"
																																		width="100" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</div></td>
																						</tr>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top">
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100%" border="0">
																										<tbody>
																											<tr>
																												<td align="center" height="26"><a
																													href="getGood.action?goodsId=3097" target="_self">倾心/鲜花
																												</a></td>
																											</tr>
																											<tr>
																												<td align="center" height="17">&nbsp;单价：<font
																													color="#ff6600">118.00元</font></td>
																											</tr>
																											
																											<tr>
																												<td height="17">
																													<table cellspacing="0" cellpadding="0" align="center">
																														<tbody>
																															<tr>
																																<td>&nbsp;<a
																																	href="getGood.action?goodsId=3097"
																																	target="_self"><img height="17"
																																		src="indexImage.files/detail.gif"
																																		width="40" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</div>
																							</td>
																						</tr>
																					</tbody>
																				</table>
																			</td>
																			<td valign="top" width="1">&nbsp;</td>
																			<td valign="top" width="300">
																				<table cellspacing="0" cellpadding="0" width="100%">
																					<tbody>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top"><br>
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100" border="0">
																										<tbody>
																											<tr>
																												<td bgcolor="#c2c0c0">
																													<table cellspacing="1" cellpadding="0" width="100" border="0">
																														<tbody>
																															<tr>
																																<td><a
																																	href="getGood.action?goodsId=3004"
																																	target="_self"><img height="100"
																																		alt="心中只有你/鲜花"
																																		src="indexImage.files/20057141691373459.jpg"
																																		width="100" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</div></td>
																						</tr>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top">
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100%" border="0">
																										<tbody>
																											<tr>
																												<td align="center" height="26"><a
																													href="getGood.action?goodsId=3004" target="_self">心中只有你/鲜..
																												</a></td>
																											</tr>
																											<tr>
																												<td align="center" height="17">&nbsp;单价：<font
																													color="#ff6600">128.00元</font></td>
																											</tr>
																											
																											<tr>
																												<td height="17">
																													<table cellspacing="0" cellpadding="0" align="center">
																														<tbody>
																															<tr>
																																<td>&nbsp;<a
																																	href="getGood.action?goodsId=3004"
																																	target="_self"><img height="17"
																																		src="indexImage.files/detail.gif"
																																		width="40" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</div>
																							</td>
																						</tr>
																					</tbody>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td valign="top" width="300">
																				<table cellspacing="0" cellpadding="0" width="100%">
																					<tbody>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top"><br>
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100" border="0">
																										<tbody>
																											<tr>
																												<td bgcolor="#c2c0c0">
																													<table cellspacing="1" cellpadding="0" width="100" border="0">
																														<tbody>
																															<tr>
																																<td><a
																																	href="getGood.action?goodsId=3007"
																																	target="_self"><img height="100"
																																		alt="表白/鲜花"
																																		src="indexImage.files/20056239375477491.jpg"
																																		width="100" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</div></td>
																						</tr>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top">
																								<div align="center">																									
																									<table cellspacing="0" cellpadding="0"
																										width="100%" border="0">
																										<tbody>
																											<tr>
																												<td align="center" height="26"><a
																													href="getGood.action?goodsId=3007" target="_self">表白/鲜花
																												</a></td>
																											</tr>
																											<tr>
																												<td align="center" height="17">&nbsp;单价：<font
																													color="#ff6600">118.00元</font></td>
																											</tr>
																											
																											<tr>
																												<td height="17">
																													<table cellspacing="0" cellpadding="0"
																														align="center">
																														<tbody>
																															<tr>
																																<td>&nbsp;<a
																																	href="getGood.action?goodsId=3007"
																																	target="_self"><img height="17"
																																		src="indexImage.files/detail.gif"
																																		width="40" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</div>
																							</td>
																						</tr>
																					</tbody>
																				</table>
																			</td>
																			<td valign="top" width="1"
																				background="indexImage.files/bj_x1.gif"></td>
																			<td valign="top" width="300">
																				<table cellspacing="0" cellpadding="0" width="100%">
																					<tbody>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top"><br>
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100" border="0">
																										<tbody>
																											<tr>
																												<td bgcolor="#c2c0c0">
																													<table cellspacing="1" cellpadding="0" width="100" border="0">
																														<tbody>
																															<tr>
																																<td><a
																																	href="getGood.action?goodsId=3132"
																																	target="_self"><img height="100"
																																		alt="这样爱你/鲜花"
																																		src="indexImage.files/200562116433071948.jpg"
																																		width="100" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</div></td>
																						</tr>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top">
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100%" border="0">
																										<tbody>
																											<tr>
																												<td align="center" height="26"><a
																													href="getGood.action?goodsId=3132" target="_self">这样爱你/鲜花
																												</a></td>
																											</tr>
																											<tr>
																												<td align="center" height="17">&nbsp;单价：<font
																													color="#ff6600">68.00元</font></td>
																											</tr>
																											
																											<tr>
																												<td height="17">
																													<table cellspacing="0" cellpadding="0" align="center">
																														<tbody>
																															<tr>
																																<td>&nbsp;<a
																																	href="getGood.action?goodsId=3132"
																																	target="_self"><img height="17"
																																		src="indexImage.files/detail.gif"
																																		width="40" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																									<font color="#999999"></font>
																								</div>
																							</td>
																						</tr>
																						<tr></tr>
																					</tbody>
																				</table>
																			</td>
																			<td valign="top" width="1">&nbsp;</td>
																			<td valign="top" width="300">
																				<table cellspacing="0" cellpadding="0" width="100%">
																					<tbody>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top"><br>
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100" border="0">
																										<tbody>
																											<tr>
																												<td bgcolor="#c2c0c0">
																													<table cellspacing="1" cellpadding="0" width="100" border="0">
																														<tbody>
																															<tr>
																																<td><a
																																	href="getGood.action?goodsId=3129"
																																	target="_self"><img height="100"
																																		alt="想你爱你/鲜花"
																																		src="indexImage.files/2005617143031038.jpg"
																																		width="100" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</div></td>
																						</tr>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top">
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100%" border="0">
																										<tbody>
																											<tr>
																												<td align="center" height="26"><a
																													href="getGood.action?goodsId=3129" target="_self">想你爱你/鲜花
																												</a></td>
																											</tr>
																											<tr>
																												<td align="center" height="17">&nbsp;单价：<font
																													color="#ff6600">128.00元</font></td>
																											</tr>
																											
																											<tr>
																												<td height="17">
																													<table cellspacing="0" cellpadding="0" align="center">
																														<tbody>
																															<tr>
																																<td>&nbsp;<a
																																	href="getGood.action?goodsId=3129"
																																	target="_self"><img height="17"
																																		src="indexImage.files/detail.gif"
																																		width="40" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																									<font color="#999999"></font>
																								</div>
																							</td>
																						</tr>
																						<tr></tr>
																					</tbody>
																				</table>
																			</td>
																			<td valign="top" width="1">&nbsp;</td>
																			<td valign="top" width="300">
																				<table cellspacing="0" cellpadding="0" width="100%">
																					<tbody>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top"><br>
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100" border="0">
																										<tbody>
																											<tr>
																												<td bgcolor="#c2c0c0">
																													<table cellspacing="1" cellpadding="0" width="100" border="0">
																														<tbody>
																															<tr>
																																<td><a
																																	href="getGood.action?goodsId=3010"
																																	target="_self"><img height="100"
																																		alt="思念到永远/鲜花"
																																		src="indexImage.files/20054819185752651.jpg"
																																		width="100" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</div></td>
																						</tr>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top">
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100%" border="0">
																										<tbody>
																											<tr>
																												<td align="center" height="26"><a
																													href="getGood.action?goodsId=3010" target="_self">思念到永远/鲜..
																												</a></td>
																											</tr>
																											<tr>
																												<td align="center" height="17">&nbsp;单价：<font
																													color="#ff6600">158.00元</font></td>
																											</tr>
																											
																											<tr>
																												<td height="17">
																													<table cellspacing="0" cellpadding="0" align="center">
																														<tbody>
																															<tr>
																																<td>&nbsp;<a
																																	href="getGood.action?goodsId=3010"
																																	target="_self"><img height="17"
																																		src="indexImage.files/detail.gif"
																																		width="40" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</div>
																							</td>
																						</tr>
																					</tbody>
																				</table>
																			</td>
																			<td valign="top" width="1">&nbsp;</td>
																			<td valign="top" width="300">
																				<table cellspacing="0" cellpadding="0" width="100%">
																					<tbody>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top"><br>
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100" border="0">
																										<tbody>
																											<tr>
																												<td bgcolor="#c2c0c0">
																													<table cellspacing="1" cellpadding="0" width="100" border="0">
																														<tbody>
																															<tr>
																																<td><a
																																	href="getGood.action?goodsId=3012"
																																	target="_self"><img height="100"
																																		alt="思念/鲜花"
																																		src="indexImage.files/20053219492079374.jpg"
																																		width="100" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</div></td>
																						</tr>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top">
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100%" border="0">
																										<tbody>
																											<tr>
																												<td align="center" height="26"><a
																													href="getGood.action?goodsId=3012" target="_self">思念/鲜花
																												</a></td>
																											</tr>
																											<tr>
																												<td align="center" height="17">&nbsp;单价：<font
																													color="#ff6600">138.00元</font></td>
																											</tr>
																											
																											<tr>
																												<td height="17">
																													<table cellspacing="0" cellpadding="0" align="center">
																														<tbody>
																															<tr>
																																<td>&nbsp;<a
																																	href="getGood.action?goodsId=3012"
																																	target="_self"><img height="17"
																																		src="indexImage.files/detail.gif"
																																		width="40" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</div>
																							</td>
																						</tr>
																					</tbody>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td valign="top" width="300">
																				<table cellspacing="0" cellpadding="0" width="100%">
																					<tbody>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top"><br>
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100" border="0">
																										<tbody>
																											<tr>
																												<td bgcolor="#c2c0c0">
																													<table cellspacing="1" cellpadding="0" width="100" border="0">
																														<tbody>
																															<tr>
																																<td><a
																																	href="getGood.action?goodsId=3013"
																																	target="_self"><img height="100"
																																		alt="今生唯一的爱/鲜花"
																																		src="indexImage.files/20053219343523228.jpg"
																																		width="100" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</div></td>
																						</tr>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top">
																								<div align="center">																									
																									<table cellspacing="0" cellpadding="0" width="100%" border="0">
																										<tbody>
																											<tr>
																												<td align="center" height="26"><a
																													href="getGood.action?goodsId=3013" target="_self">今生唯一的爱/..
																												</a></td>
																											</tr>
																											<tr>
																												<td align="center" height="17">&nbsp;单价：<font
																													color="#ff6600">66.00元</font></td>
																											</tr>
																											
																											<tr>
																												<td height="17">
																													<table cellspacing="0" cellpadding="0" align="center">
																														<tbody>
																															<tr>
																																<td>&nbsp;<a
																																	href="getGood.action?goodsId=3013"
																																	target="_self"><img height="17"
																																		src="indexImage.files/detail.gif"
																																		width="40" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</div>
																							</td>
																						</tr>
																					</tbody>
																				</table>
																			</td>
																			<td valign="top" width="1"
																				background="indexImage.files/bj_x1.gif"></td>
																			<td valign="top" width="300">
																				<table cellspacing="0" cellpadding="0" width="100%">
																					<tbody>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top"><br>
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100" border="0">
																										<tbody>
																											<tr>
																												<td bgcolor="#c2c0c0">
																													<table cellspacing="1" cellpadding="0" width="100" border="0">
																														<tbody>
																															<tr>
																																<td><a
																																	href="getGood.action?goodsId=3008"
																																	target="_self"><img height="100"
																																		alt="心心相印/鲜花"
																																		src="indexImage.files/20053919321783712.jpg"
																																		width="100" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</div></td>
																						</tr>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top">
																								<div align="center">
																									<table cellspacing="0" cellpadding="0"
																										width="100%" border="0">
																										<tbody>
																											<tr>
																												<td align="center" height="26"><a
																													href="getGood.action?goodsId=3008" target="_self">心心相印/鲜花
																												</a></td>
																											</tr>
																											<tr>
																												<td align="center" height="17">&nbsp;单价：<font
																													color="#ff6600">266.00元</font></td>
																											</tr>
																											
																											<tr>
																												<td height="17">
																													<table cellspacing="0" cellpadding="0" align="center">
																														<tbody>
																															<tr>
																																<td>&nbsp;<a
																																	href="getGood.action?goodsId=3008"
																																	target="_self"><img height="17"
																																		src="indexImage.files/detail.gif"
																																		width="40" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																									<font color="#999999"></font>
																								</div>
																							</td>
																						</tr>
																						<tr></tr>
																					</tbody>
																				</table>
																			</td>
																			<td valign="top" width="1">&nbsp;</td>
																			<td valign="top" width="300">
																				<table cellspacing="0" cellpadding="0" width="100%">
																					<tbody>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top"><br>
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100" border="0">
																										<tbody>
																											<tr>
																												<td bgcolor="#c2c0c0">
																													<table cellspacing="1" cellpadding="0" width="100" border="0">
																														<tbody>
																															<tr>
																																<td><a
																																	href="getGood.action?goodsId=3130"
																																	target="_self"><img height="100"
																																		alt="欣欣向荣（鲜花）"
																																		src="indexImage.files/200521310554882207.jpg"
																																		width="100" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</div></td>
																						</tr>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top">
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100%" border="0">
																										<tbody>
																											<tr>
																												<td align="center" height="26"><a
																													href="getGood.action?goodsId=3130" target="_self">欣欣向荣（鲜花..
																												</a></td>
																											</tr>
																											<tr>
																												<td align="center" height="17">&nbsp;单价：<font
																													color="#ff6600">118.00元</font></td>
																											</tr>
																											
																											<tr>
																												<td height="17">
																													<table cellspacing="0" cellpadding="0" align="center">
																														<tbody>
																															<tr>
																																<td>&nbsp;<a
																																	href="getGood.action?goodsId=3130"
																																	target="_self"><img height="17"
																																		src="indexImage.files/detail.gif"
																																		width="40" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																									<font color="#999999"></font>
																								</div>
																							</td>
																						</tr>
																						<tr></tr>
																					</tbody>
																				</table>
																			</td>
																			<td valign="top" width="1">&nbsp;</td>
																			<td valign="top" width="300">
																				<table cellspacing="0" cellpadding="0" width="100%">
																					<tbody>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top"><br>
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100" border="0">
																										<tbody>
																											<tr>
																												<td bgcolor="#c2c0c0">
																													<table cellspacing="1" cellpadding="0" width="100" border="0">
																														<tbody>
																															<tr>
																																<td><a
																																	href="getGood.action?goodsId=3124"
																																	target="_self"><img height="100"
																																		alt="爱你一生一世/爱情鲜花"
																																		src="indexImage.files/200512915411913343.jpg"
																																		width="100" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</div></td>
																						</tr>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top">
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100%" border="0">
																										<tbody>
																											<tr>
																												<td align="center" height="26"><a
																													href="getGood.action?goodsId=3124" target="_self">爱你一生一世/..
																												</a></td>
																											</tr>
																											<tr>
																												<td align="center" height="17">&nbsp;单价：<font
																													color="#ff6600">118.00元</font></td>
																											</tr>
																											
																											<tr>
																												<td height="17">
																													<table cellspacing="0" cellpadding="0" align="center">
																														<tbody>
																															<tr>
																																<td>&nbsp;<a
																																	href="getGood.action?goodsId=3124"
																																	target="_self"><img height="17"
																																		src="indexImage.files/detail.gif"
																																		width="40" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</div>
																							</td>
																						</tr>
																					</tbody>
																				</table>
																			</td>
																			<td valign="top" width="1">&nbsp;</td>
																			<td valign="top" width="300">
																				<table cellspacing="0" cellpadding="0" width="100%">
																					<tbody>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top"><br>
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100" border="0">
																										<tbody>
																											<tr>
																												<td bgcolor="#c2c0c0">
																													<table cellspacing="1" cellpadding="0" width="100" border="0">
																														<tbody>
																															<tr>
																																<td><a
																																	href="getGood.action?goodsId=3125"
																																	target="_self"><img height="100"
																																		alt="牵挂/鲜花"
																																		src="indexImage.files/20051715361074711.jpg"
																																		width="100" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</div></td>
																						</tr>
																						<tr>
																							<td style="PADDING-LEFT: 6px" valign="top">
																								<div align="center">
																									<table cellspacing="0" cellpadding="0" width="100%" border="0">
																										<tbody>
																											<tr>
																												<td align="center" height="26"><a
																													href="getGood.action?goodsId=3125" target="_self">牵挂/鲜花
																												</a></td>
																											</tr>
																											<tr>
																												<td align="center" height="17">&nbsp;单价：<font
																													color="#ff6600">128.00元</font></td>
																											</tr>
																											
																											<tr>
																												<td height="17">
																													<table cellspacing="0" cellpadding="0" align="center">
																														<tbody>
																															<tr>
																																<td>&nbsp;<a
																																	href="getGood.action?goodsId=3125"
																																	target="_self"><img height="17"
																																		src="indexImage.files/detail.gif"
																																		width="40" border="0"></a></td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</div>
																							</td>
																						</tr>
																					</tbody>
																				</table>
																			</td>
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
															<td height="10"></td>
														</tr>
														<tr>
															<td bgcolor="#99d767" height="3"></td>
														</tr>
													</tbody>
												</table>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		
		<table cellspacing="0" cellpadding="0" width="760" align="center" border="0">
			<tbody>
				<tr>
					<td>
						<div align="center"></div>
	
						<div align="center"></div>
	
						<table cellspacing="0" cellpadding="0" width="812" align="center" bgcolor="#e0e0e0" border="0">
							<tbody>
								<tr>
									<td>&nbsp;</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
		<table width="812" height="48" border="0" align="center" cellpadding="0" cellspacing="0">
			<tbody>
				<tr>
					<td height="16" bgcolor="#f5f5f5"><div align="center" class="cfont">
							<div align="center">
								<font color="#7f7f7f"><b><a
										href="admin/CheckLogin.jsp">管理员登录</a></b></font>
							</div>
						</div></td>
				</tr>
				<tr>
					<td height="31" bgcolor="#f5f5f5"><div align="center">Copyright
							All Rights Reserved</div></td>
				</tr>
			</tbody>
		</table>
		
	</div>
</body>
</html>