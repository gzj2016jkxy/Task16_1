<%@page import="com.gzj.entity.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

</head>
<body>
	<%
		Admin us = (Admin) session.getAttribute("Admin");	
	%>
	<div align="center">
		<marquee>
			欢迎管理员:<%=us.getAdminName()%>进入后台管理页面
		</marquee>
	</div>
</body>
</html>