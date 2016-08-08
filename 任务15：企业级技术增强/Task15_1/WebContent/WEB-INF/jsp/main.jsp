<%@page import="com.gzj.model.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>图书信息管理系统</title>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!-- Bootstrap Styles-->
<link href="<%=path%>/assets/css/bootstrap.css" rel="stylesheet" />
<!-- FontAwesome Styles-->
<link href="<%=path%>/assets/css/font-awesome.css" rel="stylesheet" />
<!-- Custom Styles-->
<link href="<%=path%>/assets/css/custom-styles.css" rel="stylesheet" />

</head>
<body>
	<div id="wrapper">
		<nav class="navbar navbar-default top-navbar" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".sidebar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<span class="navbar-brand"><i class="fa fa-comments"></i> <strong>图书管理系统</strong></span>
		</div>

		<ul class="nav navbar-top-links navbar-right">
			<!-- /.dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#" aria-expanded="false"> <i
					class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-user">
					<li><a href="<%=path%>/gzj/logout"><i
							class="fa fa-sign-out fa-fw"></i> 退出</a></li>
				</ul> <!-- /.dropdown-user --></li>
			<!-- /.dropdown -->
		</ul>
		</nav>
		<!--/. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">

		<div class="sidebar-collapse">
			<ul class="nav" id="main-menu">

				<li><a href="<%=path%>/gzj/getBookType"><i class="fa fa-dashboard"></i>
						查看所有图书类别</a></li>
				<li><a href="<%=path%>/gzj/toAddBookType"><i class="fa fa-desktop"></i>
						添加图书类别</a></li>
				<li><a href="<%=path%>/gzj/getBook"><i class="fa fa-bar-chart-o"></i>
						查看所有图书</a></li>
				<li><a href="<%=path%>/gzj/toAddBook"><i class="fa fa-qrcode"></i>
						添加图书</a></li>

				<li><a href="<%=path%>/gzj/getReader"><i class="fa fa-table"></i>
						查看所有读者信息</a></li>
				<li><a href="<%=path%>/gzj/toAddReader"><i class="fa fa-edit"></i> 添加读者 </a></li>


				<li><a href="#"><i class="fa fa-sitemap"></i> 管理员信息维护<span
						class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="<%=path%>/gzj/toModifyPwd">修改密码</a></li>
						<li><a href="<%=path%>/gzj/toAddAccount">添加管理员</a></li>
					</ul></li>

			</ul>

		</div>
		</nav>
		<!-- /. NAV SIDE  -->

		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="well well-lg">
						<%
							Admin admin=(Admin)session.getAttribute("Admin");
						%>
						<h4>欢迎<%=admin.getUserName()%>登陆图书管理系统</h4>
						<p style="text-indent:2em;">根据图书信息管理系统的特点, 可以将本系统分为2大功能模块,分别为:基础数据维护、系统数据维护。</p>
					</div>
				</div>
			</div>
			<!-- /. PAGE INNER  -->
		</div>

	</div>

	<!-- /. WRAPPER  -->
	<!-- JS Scripts-->
	<!-- jQuery Js -->
	<script src="<%=path%>/assets/js/jquery-1.10.2.js"></script>
	<!-- Bootstrap Js -->
	<script src="<%=path%>/assets/js/bootstrap.min.js"></script>

	<!-- Metis Menu Js -->
	<script src="<%=path%>/assets/js/jquery.metisMenu.js"></script>
	
	 <!-- Custom Js -->
    <script src="<%=path%>/assets/js/custom-scripts.js"></script>
	
</body>
</html>