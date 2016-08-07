<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<frameset rows="20%,*">
	<frame src="../top.jsp">
	<frameset cols="20%,*">
		<frame src="../main_left.jsp">
		<frame src="../main_right.jsp" name="main_right">
	</frameset>
</frameset>
<body>
	
</body>
</html>
