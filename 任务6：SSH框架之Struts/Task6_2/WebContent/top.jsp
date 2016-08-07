<%@page import="com.gzj.pojo.Users"%>
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
		Users us = (Users) session.getAttribute("User");	
	%>
	<marquee>
		欢迎用户:<%=us.getUsername()%>进入全唐诗搜索网站
	</marquee>
</body>
</html>
