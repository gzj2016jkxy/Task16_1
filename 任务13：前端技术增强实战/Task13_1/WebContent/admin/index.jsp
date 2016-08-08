<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理页面</title>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
</head>

<frameset rows="10%,*" border="0" framespacing="0">
	<frame src="<%=path%>/admin/top.jsp">
	<frameset cols="20%,*">
		<frame src="<%=path%>/admin/images/menu.jsp">
		<frame src="<%=path%>/admin/main.jsp" name="main">
	</frameset>
</frameset>

<body>
	
</body>
</html>