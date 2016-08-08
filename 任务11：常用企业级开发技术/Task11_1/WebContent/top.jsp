<%@page import="com.gzj.entity.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
</head>
<jsp:include page="isLogin.jsp"></jsp:include>
<body>
	<%
		User us = (User) session.getAttribute("User");	
	%>
	<marquee>
		欢迎用户:<%=us.getUsername()%> 登录商场VIP消费情况查询系统
	</marquee>
</body>
</html>
