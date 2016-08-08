<%@page import="java.util.Iterator"%>
<%@page import="com.gzj.entity.LeaveLanguage"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>留言</title>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<link href="tourist/languageImage.files/mt_style.css" type="text/css"
	rel="stylesheet">
<style type="text/css">
body {
	font-size: 9pt
}

td {
	font-size: 9pt
}

th {
	font-size: 9pt
}

</style>

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
	font-size: 9pt;
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
</style>

<%
	List<LeaveLanguage> list = (List<LeaveLanguage>) session.getAttribute("LeaveLanguage");
%>

</head>
<body>
	<table cellspacing="0" cellpadding="0" width="812" align="center"
		bgcolor="#ffffff" border="0">
		<tbody>
			<tr>
				<td width="40"><img height="1" alt=""
					src="tourist/languageImage.files/spacer.gif" width="38" border="0"></td>
				<td width="63"><img height="1" alt=""
					src="tourist/languageImage.files/spacer.gif" width="63" border="0"></td>
				<td width="67"><img height="1" alt=""
					src="tourist/languageImage.files/spacer.gif" width="59" border="0"></td>
				<td width="59"><img height="1" alt=""
					src="tourist/languageImage.files/spacer.gif" width="56" border="0"></td>
				<td width="66"><img height="1" alt=""
					src="tourist/languageImage.files/spacer.gif" width="62" border="0"></td>
				<td width="17"><img height="1" alt=""
					src="tourist/languageImage.files/spacer.gif" width="16" border="0"></td>
				<td width="47"><img height="1" alt=""
					src="tourist/languageImage.files/spacer.gif" width="44" border="0"></td>
				<td width="82"><img height="1" alt=""
					src="tourist/languageImage.files/spacer.gif" width="77" border="0"></td>
				<td width="87"><img height="1" alt=""
					src="tourist/languageImage.files/spacer.gif" width="82" border="0"></td>
				<td width="82"><img height="1" alt=""
					src="tourist/languageImage.files/spacer.gif" width="77" border="0"></td>
				<td width="85"><img height="1" alt=""
					src="tourist/languageImage.files/spacer.gif" width="80" border="0"></td>
				<td width="76"><img height="1" alt=""
					src="tourist/languageImage.files/spacer.gif" width="72" border="0"></td>
				<td width="41"><img height="1" alt=""
					src="tourist/languageImage.files/spacer.gif" width="34" border="0"></td>
			</tr>
			<tr>
				<td colspan="6" rowspan="2"><img height="79" alt=""
					src="tourist/languageImage.files/title_r1_c1.gif" width="294" border="0"
					name="title_r1_c1"></td>
				<td bgcolor="#ffffff" colspan="7">
					<div align="right">
						<a name="top"></a><a onfocus="this.blur()"
							href="<%=path%>/register/cart.jsp"><img height="20"
							src="tourist/languageImage.files/top_cart.gif" width="76" border="0"></a>
						<a onfocus="this.blur()" href="../register/checkMyInfo.jsp"><img
							height="20" src="tourist/languageImage.files/top_my.gif" width="76"
							border="0"></a> <a onfocus="this.blur()" href="help.jsp"><img
							height="20" src="tourist/languageImage.files/top_faq.gif" width="76"
							border="0"></a> <a onfocus="this.blur()"
							href="../index.jsp"><img height="20"
							src="tourist/languageImage.files/top_wh.gif" width="76" border="0"></a>
					</div>
				</td>
			</tr>
			<tr>
				<td bgcolor="#ffffff" colspan="7">
					<table height="44" cellspacing="0" cellpadding="0" width="62%"
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
					src="tourist/languageImage.files/title_r2_c1.gif" width="40" border="0"
					name="title_r2_c1"></td>
				<td><a href="index.jsp"><img height="27" alt=""
						src="tourist/cartImage.files/title_r2_c2.gif" width="63" border="0"
						name="title_r2_c2"></a></td>
				<td colspan="11"><a href="getProduce.action"><img
						height="27" alt="" src="tourist/languageImage.files/title_r2_c10.gif"
						width="77" border="0" name="title_r2_c10"></a><a
					href="getLeaveLanguage.action"><img height="27" alt=""
						src="tourist/languageImage.files/title_r2_c11.gif" width="80" border="0"
						name="title_r2_c11"></a><a href="./tourist/flowersLanguage.jsp"><img
						height="27" alt="" src="tourist/languageImage.files/title_r2_c12.gif"
						width="72" border="0" name="title_r2_c12"></a><img height="27"
					alt="" src="tourist/languageImage.files/title_r2_c13.gif" width="480"
					border="0" name="title_r2_c13"></td>
			</tr>
		</tbody>
	</table>
	<br />
	<br />
	<div align="center">
		<center>
			<a style="color: #00addf;font-size: 20px;" href="<%=path%>/tourist/language.jsp">我要留言</a>
			<br/>
			<br/>
			<table id="AutoNumber2" bordercolor="#111111" cellspacing="0"
				cellpadding="0" width="812" align="center" border="0">
				<tbody>
					<tr>
						<td valign="top" width="760" bgcolor="#f6f6f6">
							<table id="AutoNumber5" style="BORDER-COLLAPSE: collapse"
								bordercolor="#111111" height="24" cellspacing="0"
								cellpadding="0" width="812" align="center" bgcolor="#ffffff"
								border="1">
								<tbody>
									<tr>
										<td style="font-size: 1px" colspan="3" height="2"></td>
									</tr>
									<tr bgcolor="#99cc66">
										<td class="active" width="90" height="20">
											<center>留言者</center>
										</td>
										<td width="533" height="20" class="active">
											<div align="center">留言内容</div>
										</td>
										<td width="181" height="20">
											<div align="center">留言时间</div>
										</td>
									</tr>

									<%
										if (list != null) {
											Iterator<LeaveLanguage> iterator = list.iterator();
											while (iterator.hasNext()) {
												LeaveLanguage language = iterator.next();
									%>
									<tr>
										<td width="90" height="20">
											<center><%=language.getName()%>
											</center>
										</td>
										<td width="533" height="20" class="active">
											<div align="center"><%=language.getLeaveLanguage()%></div>
										</td>
										<td width="181" height="20">
											<div align="center"><%=language.getDateTime()%></div>
										</td>
									</tr>
									<%
										}
										}
									%>

								</tbody>
							</table>
						</td>
					</tr>
				</tbody>
			</table>

		</center>
	</div>
	<br />
	<br />
	<br />
	<br />
	<table cellspacing="0" cellpadding="0" width="812" align="center"
		bgcolor="#e0e0e0" border="0">
		<tbody>
			<tr>
				<td width="761">&nbsp;</td>
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