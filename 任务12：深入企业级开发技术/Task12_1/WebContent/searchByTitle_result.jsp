<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="isLogin.jsp"></jsp:include>
<body>
	<%
		List<String> contents = (List<String>) session.getAttribute("Contents");
		out.print("一共检索到" + contents.size() + "条记录");
		Iterator<String> iter = contents.iterator();
	%>
	<table>
		<tr>
			<td>检索结果</td>
		</tr>
		<%
			int i = 0;
			while (iter.hasNext()) {
				String content = (String) iter.next();
		%>
		<tr <%if (i % 2 == 0) {%> bgcolor="#F0F8FF" <%}%>>
			<td><%=content%></td>
		</tr>
		<%
			i++;
			}
		%>

	</table>
</body>
</html>