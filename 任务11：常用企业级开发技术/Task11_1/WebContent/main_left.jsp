<%@page import="com.gzj.entity.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<style type="text/css">
	ul{    
    float: left;
    list-style-type: none;
    padding-top: 6px;
    padding-bottom: 6px;
	}
	li{
	   padding-left: 10px;	
	   padding-bottom: 5px;
	   padding-top: 5px;   
	}
	a:link,a:visited{
	    font-weight: bold;
	    color: burlywood;
	    text-align: center;
	    padding: 6px;
	    text-decoration: none;
	}
	a:hover,a:active{
	    color: dimgray;
	}
</style>
</head>
<jsp:include page="isLogin.jsp"></jsp:include>
<body>
	<ul>
	<li><a href="addVIPInfo.jsp" target="main_right">添加VIP信息</a></li>
	
	<li><a href="queryVIPInfo.action?osid=query" target="main_right">查看VIP信息</a></li>
	
	<s:if test="#session.User.getQuanxian()==1">
		<li><a href="queryVIPInfo.action?osid=delete" target="main_right">删除VIP信息</a></li>
		
	</s:if>
	<li><a href="addGoodsInfo.jsp" target="main_right">添加商品信息</a></li>
	
	<li><a href="queryGoodsInfo.action?osid=query" target="main_right">查看商品信息</a></li>
	
	<s:if test="#session.User.getQuanxian()==1">
		<li><a href="queryGoodsInfo.action?osid=delete" target="main_right">删除商品信息</a></li>
		
	</s:if>
	<li><a href="addRecord.jsp" target="main_right">添加消费记录</a></li>
	
	<li><a href="queryRecord.action?osid=query" target="main_right">查看消费记录</a></li>
	
	<s:if test="#session.User.getQuanxian()==1">
		<li><a href="queryRecord.action?osid=delete" target="main_right">删除消费记录</a></li>
		
	</s:if>
	<li><a href="help.jsp" target="main_right">帮助</a></li>
	
	<li><a href="logout.action" target="_top">退出</a></li>
	
	</ul>
</body>
</html>
