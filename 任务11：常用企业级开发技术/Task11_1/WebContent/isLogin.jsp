<%@page import="com.gzj.entity.User"%>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	User user = (User) session.getAttribute("User");
	if (user == null) {
%>

<jsp:forward page="login.jsp"></jsp:forward>
<%
	}
%>
