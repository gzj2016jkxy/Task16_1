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

<body>
	<h3>删除失败!</h3>
	<h4><a href="<%=path%>/HelloStruts/usermanage.action">返回用户管理</a></h4>
</body>
</html>
