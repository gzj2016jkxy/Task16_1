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
		List<String> titles = (List<String>) session.getAttribute("Titles");
		out.print("一共检索到" + titles.size() + "条记录");
		Iterator<String> iter = titles.iterator();
	%>
	<table>
		<tr>
			<td>该作者所有作品</td>
		</tr>
		<%
			int i = 0;
			while (iter.hasNext()) {
				String title = (String) iter.next();
		%>
		<tr <%if (i % 2 == 0) {%> bgcolor="#F0F8FF" <%}%>>
			<td><%="《"+title+"》"%></td>
		</tr>
		<%
			i++;
			}
		%>

	</table>
</body>
</html>