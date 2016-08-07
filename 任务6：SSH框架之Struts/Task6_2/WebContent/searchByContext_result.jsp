<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.gzj.pojo.Poets"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
	.c1{width: 80px;text-align: center;}
	.c2{width: 150px;text-align: center;}	
	table {
		border: 1px solid burlywood;
	}
</style>
<jsp:include page="isLogin.jsp"></jsp:include>
<body>
	<%
		List<Poets> pos = (List<Poets>) session.getAttribute("Poets");
		out.print("一共检索到" + pos.size() + "条记录");
		Iterator<Poets> iter = pos.iterator();
	%>
	<table>
		<tr>
			<td class="c1">作者</td>
			<td class="c2">题目</td>
			<td>全文</td>
		</tr>
		<%
			int i = 0;
			while (iter.hasNext()) {
				Poets po = (Poets) iter.next();
		%>
		<tr <%if (i % 2 == 0) {%> bgcolor="#F0F8FF" <%}%>>
			<td class="c1"><%=po.getAuthor()%></td>
			<td class="c2"><%=po.getTitle()%></td>
			<td><%=po.getContext()%></td>
		</tr>
		<%
			i++;
			}
		%>

	</table>
</body>
</html>