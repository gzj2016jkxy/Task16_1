<%@page import="java.util.Iterator"%>
<%@page import="com.gzj.entity.ProduceDetail"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>厂商明细</title>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<link href="<%=path%>/tourist/cartImage.files/css.css" type="text/css"
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

.white1 {
	font-weight: bold;
	font-size: 9pt;
	color: #ffffff
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

</head>
<body>
	<table cellspacing="0" cellpadding="0" width="812" align="center"
		bgcolor="#ffffff" border="0">
		<tbody>
			<tr>
				<td><img height="1" alt=""
					src="<%=path%>/tourist/cartImage.files/spacer.gif" width="38" border="0"></td>
				<td><img height="1" alt=""
					src="<%=path%>/tourist/cartImage.files/spacer.gif" width="63" border="0"></td>
				<td><img height="1" alt=""
					src="<%=path%>/tourist/cartImage.files/spacer.gif" width="59" border="0"></td>
				<td><img height="1" alt=""
					src="<%=path%>/tourist/cartImage.files/spacer.gif" width="56" border="0"></td>
				<td><img height="1" alt=""
					src="<%=path%>/tourist/cartImage.files/spacer.gif" width="62" border="0"></td>
				<td><img height="1" alt=""
					src="<%=path%>/tourist/cartImage.files/spacer.gif" width="16" border="0"></td>
				<td><img height="1" alt=""
					src="<%=path%>/tourist/cartImage.files/spacer.gif" width="44" border="0"></td>
				<td><img height="1" alt=""
					src="<%=path%>/tourist/cartImage.files/spacer.gif" width="77" border="0"></td>
				<td><img height="1" alt=""
					src="<%=path%>/tourist/cartImage.files/spacer.gif" width="82" border="0"></td>
				<td><img height="1" alt=""
					src="<%=path%>/tourist/cartImage.files/spacer.gif" width="77" border="0"></td>
				<td><img height="1" alt=""
					src="<%=path%>/tourist/cartImage.files/spacer.gif" width="80" border="0"></td>
				<td><img height="1" alt=""
					src="<%=path%>/tourist/cartImage.files/spacer.gif" width="72" border="0"></td>
				<td><img height="1" alt=""
					src="<%=path%>/tourist/cartImage.files/spacer.gif" width="34" border="0"></td>
			</tr>
			<tr>
				<td colspan="6" rowspan="2"><img height="79" alt=""
					src="<%=path%>/tourist/cartImage.files/title_r1_c1.gif" width="294"
					border="0" name="title_r1_c1"></td>
				<td bgcolor="#ffffff" colspan="7">
					<div align="right">
						<a name="top"></a><a href="cart.jsp"><img height="20"
							src="<%=path%>/tourist/cartImage.files/top_cart.gif" width="76" border="0"></a>
						<a onfocus="this.blur()" href="register/checkMyInfo.jsp"><img
							height="20" src="<%=path%>/tourist/cartImage.files/top_my.gif" width="76"
							border="0"></a> <a onfocus="this.blur()" href="tourist/help.jsp"><img
							height="20" src="<%=path%>/tourist/cartImage.files/top_faq.gif" width="76"
							border="0"></a> <a onfocus="this.blur()"
							href="logout.action"><img height="20"
							src="<%=path%>/tourist/cartImage.files/top_wh.gif" width="76" border="0"></a>
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
					src="<%=path%>/tourist/cartImage.files/title_r2_c1.gif" width="38" border="0"
					name="title_r2_c1"></td>
				<td><a href="index.jsp"><img height="27" alt=""
						src="<%=path%>/tourist/cartImage.files/title_r2_c2.gif" width="63"
						border="0" name="title_r2_c2"></a></td>
				<td colspan="11"><a href="<%=path%>/getProduce.action"><img
						height="27" alt="" src="<%=path%>/tourist/cartImage.files/title_r2_c10.gif"
						width="77" border="0" name="title_r2_c10"></a><a
					href="<%=path%>/getLeaveLanguage.action"><img height="27" alt=""
						src="<%=path%>/tourist/cartImage.files/title_r2_c11.gif" width="80"
						border="0" name="title_r2_c11"></a><a
					href="../<%=path%>/tourist/flowersLanguage.jsp"><img height="27" alt=""
						src="<%=path%>/tourist/cartImage.files/title_r2_c12.gif" width="72"
						border="0" name="title_r2_c12"></a><img height="27" alt=""
					src="<%=path%>/tourist/cartImage.files/title_r2_c13.gif" width="476"
					border="0" name="title_r2_c13"></td>
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
						<div align="left"></div>
						<div align="left"></div>
					</div>
				</td>
				<td width="352">
					<div align="center"></div>
				</td>
			</tr>
		</tbody>
	</table>
	<table cellspacing="1" cellpadding="1" width="812" align="center"
		bgcolor="#00addf" border="0">
		<tbody>
			<tr>
				<td width="33%"><form action="cart.jsp" method="get"></form></td>
			</tr>
		</tbody>
		<tbody>
			<tr bgcolor="#00addf">
				<td height="22" colspan="2" bgcolor="#00addf">
					<div class="white1" align="center">厂商号</div>
				</td>
				<td width="21%" height="22">
					<div class="white1" align="center">厂商名</div>
				</td>
				<td width="25%" class=white1><div align="center">产品种类</div></td>
				<td width="32%" class=white1><div align="center">产品</div></td>
			</tr>

			<%
				List<ProduceDetail> list = (List<ProduceDetail>) session.getAttribute("ProduceDetail");
				if (list != null) {
					Iterator<ProduceDetail> iterator = list.iterator();
					while (iterator.hasNext()) {
						ProduceDetail produce = iterator.next();
			%>
			<tr bgcolor=#FFFFFF>
				<td colspan="2"><div align=center><%=request.getParameter("produceId")%></div></td>
				<td>
					<div align=center><%=produce.getProduceName()%></div>
				</td>
				<td><div align=center><%=produce.getSortName()%></div></td>
				<td><div align=center><%=produce.getGoodsName()%></div></td>
			</tr>
			<%
				}
				}
			%>

			<tr bgcolor="#ffffff">
				<td colspan="5" height="25">&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<div align="center"></div>
				</td>
			</tr>
			<tr bgcolor="#ebf9fd">
				<td colspan="5" height="36">
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