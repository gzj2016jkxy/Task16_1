<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>登陆页面</title>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<link rel="stylesheet" href="<%=path%>/asset/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="<%=path%>/asset/font-awesome/css/font-awesome.min.css" />
<link rel="stylesheet" href="<%=path%>/asset/css/form-elements.css" />
<link rel="stylesheet" href="<%=path%>/asset/css/style.css" />
<link rel="shortcut icon" href="<%=path%>/asset/ico/favicon.png" />
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="<%=path%>/asset/ico/apple-touch-icon-144-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="<%=path%>/asset/ico/apple-touch-icon-114-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="<%=path%>/asset/ico/apple-touch-icon-72-precomposed.png" />
<link rel="apple-touch-icon-precomposed"
	href="<%=path%>/asset/ico/apple-touch-icon-57-precomposed.png" />
</head>
<body>

	<!-- Top content -->
	<div class="top-content">

		<div class="inner-bg">
			<div class="container">
				
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3 form-box">
						<div class="form-top">
							<div class="form-top-left">
								<h3>登陆图书后台管理系统</h3>
								<p>请输入用户名和密码:</p>
							</div>
							<div class="form-top-right">
								<i class="fa fa-key"></i>
							</div>
						</div>
						<div class="form-bottom">
							<form role="form" action="<%=path%>/gzj/check" method="post" class="login-form">
								<div class="form-group">
									<label class="sr-only" for="form-username">Username</label> <input
										type="text" name="userName" placeholder="用户名..."
										class="form-username form-control" id="form-username">
								</div>
								<div class="form-group">
									<label class="sr-only" for="form-password">Password</label> <input
										type="password" name="passWord" placeholder="密码..."
										class="form-password form-control" id="form-password">
								</div>
								<button type="submit" class="btn">登&nbsp;&nbsp;陆</button>
							</form>
						</div>
					</div>
				</div>
				
			</div>
		</div>

	</div>

	<script src="<%=path%>/asset/js/jquery-1.11.1.min.js"></script>
	<script src="<%=path%>/asset/bootstrap/js/bootstrap.min.js"></script>
	<script src="<%=path%>/asset/js/jquery.backstretch.min.js"></script>
	<script src="<%=path%>/asset/js/scripts.js"></script>
</body>
</html>