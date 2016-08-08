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

<style type="text/css">

.style1 {
	color: #00FF00;
	font-size: 18px;
}
.style2 {color: #0000FF}

</style>

</head>
<body>
	<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="center" class="style1">欢迎您，管理员。</p>
<p align="center"><img src="../indexImage.files/title_r1_c1.gif" width="400px;" height="111"></p>
<p align="center">&nbsp;</p>
<p align="center" class="style2">版权所有 鲜花订购系统（2010-2016）</p>
</body>
</html>