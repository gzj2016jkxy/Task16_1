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
<style type="text/css">
table {
	margin: 20px auto;
}
</style>
	<script src="js/validate.js"></script>
</head>

<body>
	<form action="<%=path%>/searchbyauthor.action" method="post" onsubmit="return checkInput()">
		<table>
			<tr>
				<td>作者：</td>
				<td><input type="text" name="searchcontent" id="searchcontent"></td>
			</tr>			
			<tr>
				<td colspan="2" style="text-align: right;"><input type="submit"
					value="搜索"></td>
			</tr>			
		</table>
	</form>
</body>
</html>