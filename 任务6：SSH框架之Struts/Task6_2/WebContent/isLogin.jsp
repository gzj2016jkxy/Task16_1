<%@page import="com.gzj.pojo.*"%>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	Users user = (Users) session.getAttribute("User");
	if (user == null) {
%>

<jsp:forward page="login.jsp"></jsp:forward>
<%
	}
%>
