<%@page import="java.util.Iterator"%>
<%@page import="com.gzj.entity.Produce"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background-color: #FFFFFF;
}

.style3 {
	color: #0000FF;
	font-size: 16px;
}

.style4 {
	color: #FFFFFF
}

.style5 {
	font-size: 12px
}

.style9 {
	color: #FFFFFF;
	font-size: 12px;
	font-weight: bold;
}

.style13 {
	font-size: 12px;
	color: #000000;
}
</style>

</head>
<body>
	<div align="center">
		<h1 class="style3">查看所有的厂商</h1>
		<table width=91% border="1" bordercolor="#00addf" bgcolor="#00addf">
			<tr bgcolor="#00addf" bordercolor="#00addf">
				<td width="28%"><div align="center" class="style4 style5">
						<strong>厂商号</strong>
					</div></td>
				<td width="46%"><div align="center" class="style9">厂商名</div></td>
				<td width="26%"><div align="center" class="style9">删除此厂商</div>
				</td>
			</tr>

			<%
				List<Produce> produce = (List<Produce>) session.getAttribute("Produce");
				if (produce != null) {
					Iterator it = produce.iterator();
					while (it.hasNext()) {
						Produce produceClass = (Produce) it.next();
						out.println("<tr bgcolor=#FFFFFF bordercolor=#00addf>");
						out.println("<td width='11%'><div align=center class=style13><strong>" + produceClass.getProduceId()
								+ "</strong></div></td>");
						out.println("<td width='13%'><div align=center class=style13>" + produceClass.getProduceName()
								+ "</div></td>");
						out.println("<td><div align=center class=style13><a href='delProduce.action?produceId="
								+ produceClass.getProduceId() + "'>删除</a></div></td>");
						out.println("</tr>");
					}
				}
			%>
		</table>
	</div>

</body>
</html>