<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示提交信息</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="user" class="com.gzj.entity.UserEntity"></jsp:useBean>
<jsp:setProperty property="userName" name="user"/>
<jsp:setProperty property="passWord" name="user"/>

<jsp:getProperty property="userName" name="user"/>
<%
	out.println("<br/>");
%>
<jsp:getProperty property="passWord" name="user"/>
</body>
</html>