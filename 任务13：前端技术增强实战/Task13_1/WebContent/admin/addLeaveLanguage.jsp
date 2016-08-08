<%@page import="java.util.Iterator"%>
<%@page import="com.gzj.entity.LeaveLanguage"%>
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
.style3 {color: #0000FF; font-size: 16px;}
.style4 {color: #FFFFFF}
.style5 {font-size: 12px}
.style9 {color: #FFFFFF; font-size: 12px; font-weight: bold; }

</style>
</head>
<body>
	<table width=91% border="1" bordercolor="#00addf" bgcolor="#00addf">
		<tr bgcolor="#00addf" bordercolor="#00addf">
			<td width="11%"><div align="center" class="style4 style5">
					<strong>Id</strong>
				</div></td>
			<td width="11%"><div align="center" class="style4 style5">
					<strong>姓名</strong>
				</div></td>
			<td width="13%"><div align="center" class="style9">QQ</div></td>
			<td width="11%"><div align="center" class="style9">E-mail</div></td>
			<td width="21%"><div align="center" class="style9">留言内容</div></td>
			<td width="22%"><div align="center" class="style9">留言时间</div></td>			
		</tr>

		<%
		
			List<LeaveLanguage> language = (List<LeaveLanguage>)session.getAttribute("LeaveLanguage");
			if(language!=null){
			Iterator it = language.iterator();
			while (it.hasNext()) {
				LeaveLanguage leaveLanguageClass = (LeaveLanguage) it.next();
				out.println("<tr bgcolor=#FFFFFF bordercolor=#00addf>");
				out.println("<td width='11%'><div align=center class=style13><strong>"
						+ leaveLanguageClass.getLeaveLanguageId() + "</strong></div></td>");
				out.println("<td width='13%'><div align=center class=style13>" + leaveLanguageClass.getName()
						+ "</div></td>");
				out.println("<td width='11%'><div align=center class=style13>" + leaveLanguageClass.getQq()
						+ "</div></td>");
				out.println("<td width='13%'><div align=center class=style13>" + leaveLanguageClass.getEmail()
						+ "</div></td>");
				out.println("<td width='11%'><div align=center class=style13>" + leaveLanguageClass.getLeaveLanguage()
						+ "</div></td>");
				out.println("<td width='11%'><div align=center class=style13>" + leaveLanguageClass.getDateTime()
						+ "</div></td>");
				out.println("</tr>");
			}
			}
		%>
	</table>
</body>
</html>