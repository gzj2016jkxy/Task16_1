<%@page import="java.util.Iterator"%>
<%@page import="com.gzj.entity.Goods"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>鲜花所属类别页面</title>

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

<%
	int pageCount=(int)session.getAttribute("pageCount");		//一共几页
	List<Goods> SearchGoods=(List<Goods>)session.getAttribute("SearchGoods");
	int rowCount=(int)session.getAttribute("rowCount");			//总记录数
	Iterator it=SearchGoods.iterator();
	int currentPage=(int)session.getAttribute("currentPage");	//当前页数
	String sortName=(String)session.getAttribute("sortName");
				
%>

</head>
<body leftmargin="0" topmargin="0" marginheight="0" marginwidth="0">

	<table cellspacing="0" cellpadding="0" width="812" align="center"
		bgcolor="#ffffff" border="0">
		<tbody>
			<tr>
				<td><img height="1" alt="" src="blessingImage.files/spacer.gif"
					width="38" border="0"></td>
				<td><img height="1" alt="" src="blessingImage.files/spacer.gif"
					width="63" border="0"></td>
				<td><img height="1" alt="" src="blessingImage.files/spacer.gif"
					width="59" border="0"></td>
				<td><img height="1" alt="" src="blessingImage.files/spacer.gif"
					width="56" border="0"></td>
				<td><img height="1" alt="" src="blessingImage.files/spacer.gif"
					width="62" border="0"></td>
				<td><img height="1" alt="" src="blessingImage.files/spacer.gif"
					width="16" border="0"></td>
				<td><img height="1" alt="" src="blessingImage.files/spacer.gif"
					width="44" border="0"></td>
				<td><img height="1" alt="" src="blessingImage.files/spacer.gif"
					width="77" border="0"></td>
				<td><img height="1" alt="" src="blessingImage.files/spacer.gif"
					width="82" border="0"></td>
				<td><img height="1" alt="" src="blessingImage.files/spacer.gif"
					width="77" border="0"></td>
				<td><img height="1" alt="" src="blessingImage.files/spacer.gif"
					width="80" border="0"></td>
				<td><img height="1" alt="" src="blessingImage.files/spacer.gif"
					width="72" border="0"></td>
				<td><img height="1" alt="" src="blessingImage.files/spacer.gif"
					width="34" border="0"></td>
			</tr>
			<tr>
				<td colspan="6" rowspan="2"><img height="79" alt=""
					src="blessingImage.files/title_r1_c1.gif" width="294" border="0"
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
							href="logout.action"><img height="20"
							src="blessingImage.files/top_wh.gif" width="76" border="0"></a>
					</div>
				</td>
			</tr>
			<tr>
				<td bgcolor="#ffffff" colspan="7">
					<table height="44" cellspacing="0" cellpadding="0" width="66%"
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
					src="blessingImage.files/title_r2_c1.gif" width="38" border="0"
					name="title_r2_c1"></td>
				<td><a href="index.jsp"><img height="27" alt=""
						src="blessingImage.files/title_r2_c2.gif" width="63" border="0"
						name="title_r2_c2"></a></td>
				<td><a href="getProduce.action"><img height="27" alt=""
						src="blessingImage.files/title_r2_c10.gif" width="77" border="0"
						name="title_r2_c10"></a></td>
				<td><a href="getLeaveLanguage.action"><img height="27" alt=""
						src="blessingImage.files/title_r2_c11.gif" width="80" border="0"
						name="title_r2_c11"></a></td>
				<td><a href="tourist/flowersLanguage.jsp"><img height="27" alt=""
						src="blessingImage.files/title_r2_c12.gif" width="72" border="0"
						name="title_r2_c12"></a></td>
				<td colspan="8"><img height="27" alt=""
					src="blessingImage.files/title_r2_c13.gif" width="482" border="0"
					name="title_r2_c13"></td>
			</tr>
		</tbody>
	</table>
	<br/>
	<br/>
	<table cellspacing="0" cellpadding="0" width="812" align="center"
		border="0">
		<tbody>
			<tr>
				<td valign="top">
					<div align="center">
						<table cellspacing="0" cellpadding="4" width="100%" align="center"
							border="0">
							<tbody>
								<tr>
									<td colspan="4"><font color="#ff0000"><font
											color="#333399">商品分类：</font></font>【<a href="index.jsp">鲜花</a>】 【<%=sortName%>】</td>
								</tr>
								<tr>
									<td background="blessingImage.files/bj_x.gif" colspan="4"
										height="1"></td>
								</tr>
							</tbody>
						</table>
						<p></p>

						<table cellspacing="0" cellpadding="0" width="19%">
							<tbody>
								<%
									int i = 0;
									String str = "tourist/image/3100.jpg";
									while (it.hasNext()) {
										Goods temp = (Goods) it.next();
										if (i % 4 == 0) {
								%>
								<tr>
									<%
										}
									%>
									<td><span class="style1">aaaaa</span></td>
									<td>
										<div align="center">
											<a href='getGood.action?goodsId=<%=temp.getGoodsId()%>' target=_self>
												<img height=100
												<%str = "tourist/image/" + temp.getGoodsId() + ".jpg";%>
												src=<%=str%> width=100 border=1>
											</a> <a href='getGood.action?goodsId=<%=temp.getGoodsId()%>' target=_self>
												<br /> <%=temp.getGoodsName()%>
											</a> <br /> 北京市区价：<font color=#ff6600><br><%=temp.getGoodsPrice()%>元<br></font>
											<a href='getGood.action?goodsId=<%=temp.getGoodsId()%>' target=_self>
												<img height=17 src="tourist/image/detail.gif" width=40
												border=0>
												<br/>
												<br/>
											</a>
										</div>
									</td>
									<td><span class="style1">aaaa</span></td>
									<%
										i++;
										if (i % 4 == 0) {
									%>
								</tr>
								<%
									}
									}
								%>
							</tbody>
						</table>

						<%
							if(rowCount==0){	
						%>
						<p class="style5">
							页次：<%=currentPage%>/<%=pageCount%>
							页 共有<%=rowCount%>种商品 &nbsp;&nbsp;首页
							-上一页 -下一页 -末页
						</p>						
						<%
							}
							else{							
						%>
						<p class="style5">
							页次：<%=currentPage%>/<%=pageCount%>
							页 共有<%=rowCount%>种商品 <a
								href="getGoodsBySort.action?searchBy=<%=sortName%>&currentPage=1">首页
							</a>-
							<%
							if (currentPage == 1) {
						%>
							上一页 -
							<%
							} else {
						%>
							<a
								href="getGoodsBySort.action?searchBy=<%=sortName%>&currentPage=<%=currentPage - 1%>">上一页
								-</a>
							<%
								}
							%>
							<%
								if (currentPage == pageCount) {
							%>
							下一页 -
							<%
								} else {
							%>
							<a
								href="getGoodsBySort.action?searchBy=<%=sortName%>&currentPage=<%=currentPage + 1%>">下一页-
							</a>
							<%
								}
							%>
							<a
								href="getGoodsBySort.action?searchBy=<%=sortName%>&currentPage=<%=pageCount%>">末页
							</a>
							<%
								for (int j = 0; j < pageCount; j++) {
							%>
							<a
								href="getGoodsBySort.action?searchBy=<%=sortName%>&currentPage=<%=j+1%>">[<%=j + 1%>]
							</a>
							<%
								}
							%>
						</p>
						<%
							}
						%>
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
						© All Rights Reserved</div></td>
			</tr>
		</tbody>
	</table>
	<p>&nbsp;</p>

</body>
</html>