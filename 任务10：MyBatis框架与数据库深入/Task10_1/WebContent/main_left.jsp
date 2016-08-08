<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
  </head>
  <jsp:include page="isLogin.jsp"></jsp:include>
  <body>
   <a href="searchByAuthor.jsp" target="main_right">根据作者搜索</a><br>
   <a href="searchByTitle.jsp" target="main_right">根据诗词名称搜索</a><br>     
   <a href="searchByContext.jsp" target="main_right">根据诗歌名句搜索</a><br>
   <a href="logout.action" target="_top">退出</a><br>
  </body>
</html>
