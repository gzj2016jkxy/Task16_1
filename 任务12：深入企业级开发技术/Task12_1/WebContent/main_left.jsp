<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	<li><a href="searchByAuthor.jsp" target="main_right">根据作者搜索</a><li>
	
	<li><a href="searchByTitle.jsp" target="main_right">根据诗词名称搜索</a><li>
	
	<li><a href="searchByContext.jsp" target="main_right">根据诗歌名句搜索</a><li>
	
	<li><a href="<%=path%>/searchCollection.action" target="main_right">查看用户收藏诗集</a><li>
	
	<li><a href="logout.action" target="_top">退出</a><li>
	</ul>
</body>
</html>
