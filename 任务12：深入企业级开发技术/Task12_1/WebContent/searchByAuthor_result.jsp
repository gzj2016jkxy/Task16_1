<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<script src="js/jquery.js"></script>
	<script src="js/collection.js"></script>
</head>
<jsp:include page="isLogin.jsp"></jsp:include>
<body>
	<%
		List<Integer> alreadyCollectID = (List<Integer>)session.getAttribute("AlreadyCollectID");
		Map<Integer,String> titles = (Map<Integer, String>) session.getAttribute("Titles");
		out.print("一共检索到" + titles.size() + "条记录");
		Iterator<Integer> iter = titles.keySet().iterator();
	%>
	<table>
		<tr>
			<td>该作者所有作品</td>
			<td></td>
		</tr>
		<%
			int i = 0;
			while (iter.hasNext()) {
				int id = (int) iter.next();
				String title = (String) titles.get(id);
		%>
		<tr <%if (i % 2 == 0) {%> bgcolor="#F0F8FF" <%}%>>
			<td><%="《"+title+"》"%></td>
			<td><input type="button" id="<%=id %>" onclick="userCollect(this)" 
				value="<%if(alreadyCollectID.contains(id)) 
							{out.print("取消收藏");}
						 else 
							{out.print("添加收藏");}%>" /></td>
		</tr>
		<%
			i++;
			}
		%>

	</table>
</body>
</html>