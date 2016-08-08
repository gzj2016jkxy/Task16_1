<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>编辑图书信息</title>
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

<script type="text/javascript">
	function check() {
		if (document.getElementById("isbn").value == "") {
			alert("请输入图书ISBN！");
			document.getElementById("isbn").focus();
			return false;
		}
		if (document.getElementById("bookName").value == "") {
			alert("请输入图书名称！");
			document.getElementById("bookName").focus();
			return false;
		}
		if (document.getElementById("writer").value == "") {
			alert("请输入作者！");
			document.getElementById("writer").focus();
			return false;
		}
		if (document.getElementById("publisher").value == "") {
			alert("请输入出版社！");
			document.getElementById("publisher").focus();
			return false;
		}	
		
		return true;				
	}
	
	function checkExist() {
		var isbn=document.getElementById("isbn").value;
		
		$.post("<%=path%>/gzj/checkIsbnExist?isbn=" + isbn,
		function(data) {
			if ("success" == data.result) {
				$("#submit").removeAttr("disabled");
				$("#checkName").html("");
			} else {
				if (document.getElementById("isbn1").value != isbn) {				
					$("#checkName").html("此图书ISBN已存在！！！");
					document.getElementById("isbn").focus();
		        	$("#submit").attr({"disabled" : "disabled"});
				}
			}
		});
	}
</script>

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

				<li><a href="<%=path%>/gzj/getBookType"><i
						class="fa fa-dashboard"></i> 查看所有图书类别</a></li>
				<li><a href="<%=path%>/gzj/toAddBookType"><i
						class="fa fa-desktop"></i> 添加图书类别</a></li>
				<li><a href="<%=path%>/gzj/getBook"><i
						class="fa fa-bar-chart-o"></i> 查看所有图书</a></li>
				<li><a href="<%=path%>/gzj/toAddBook"><i
						class="fa fa-qrcode"></i> 添加图书</a></li>

				<li><a href="<%=path%>/gzj/getReader"><i
						class="fa fa-table"></i> 查看所有读者信息</a></li>
				<li><a href="<%=path%>/gzj/toAddReader"><i
						class="fa fa-edit"></i> 添加读者 </a></li>

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
						<form action="<%=path%>/gzj/updateBook" method="post"
							onsubmit="return check();">
							<div class="form-group">
								<label>国际标准书号(ISBN):</label><font id="checkName" color="red"></font>
								<input id="isbn" name="isbn" class="form-control"
									onblur="checkExist()" value="${bookInfo.getIsbn()}">
							</div>
							<div class="form-group">
								<label>图书类型:</label> <select name="typeName" class="form-control">
									<c:forEach items="${bookTypes}" var="bookType"
										varStatus="status">
										<option value="${bookType.getTypeName()}"
											<c:if test="${bookType.getTypeName().equals(bookInfo.getBookType().getTypeName())}">selected</c:if>>
											<c:out value="${bookType.getTypeName()}" /></option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group">
								<label>书名:</label> <input id="bookName" name="bookName" class="form-control"
									value="${bookInfo.getBookName()}">
							</div>
							<div class="form-group">
								<label>作者:</label> <input id="writer" name="writer" class="form-control"
									value="${bookInfo.getWriter()}">
							</div>
							<div class="form-group">
								<label>译者:</label> <input name="translater" class="form-control"
									value="${bookInfo.getTranslater()}">
							</div>
							<div class="form-group">
								<label>出版社:</label> <input id="publisher" name="publisher" class="form-control"
									value="${bookInfo.getPublisher()}">
							</div>
							<div class="form-group">
								<label>出版日期:</label> <input name="date" class="form-control"
									value="${bookInfo.getDate()}">
							</div>
							<div class="form-group">
								<label>价格:</label> <input name="price" class="form-control"
									value="${bookInfo.getPrice()}">
							</div>
							<input type="hidden" name="id" value="${bookInfo.getId()}">
							<input type="hidden"  id="isbn1" value="${bookInfo.getIsbn()}">

							<button id="submit" type="submit" class="btn btn-default">修改</button>
							<a href="<%=path%>/gzj/getBook" class="btn btn-default">取消</a>
						</form>
					</div>
				</div>
			</div>

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