<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>编辑读者信息</title>
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
		if (document.getElementById("name").value == "") {
			alert("请输入姓名！");
			document.getElementById("name").focus();
			return false;
		}
		if (document.getElementById("age").value == "") {
			alert("请输入年龄！");
			document.getElementById("age").focus();
			return false;
		}
		if (document.getElementById("idcardno").value == "") {
			alert("请输入证件号码！");
			document.getElementById("idcardno").focus();
			return false;
		}
		if (document.getElementById("maxnum").value == "") {
			alert("请输入最大借书数目！");
			document.getElementById("maxnum").focus();
			return false;
		}	
		
		return true;				
	}
	
	function checkExist() {
		var idcardno=document.getElementById("idcardno").value;
		
		$.post("<%=path%>/gzj/checkCardNoExist?idcardno=" + idcardno,
		function(data) {
			if ("success" == data.result) {
				$("#submit").removeAttr("disabled");
				$("#checkName").html("");
			} else {
				if (document.getElementById("idcardno1").value != idcardno) {				
					$("#checkName").html("此证件号码已存在！！！");
					document.getElementById("idcardno").focus();
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
						<form action="<%=path%>/gzj/updateReader" method="post"
							onsubmit="return check();">
							<div class="form-group">
								<label>姓名:</label>
								<input id="name" name="name" class="form-control"
									value="${readerInfo.getName()}">
							</div>
							<div class="form-group">
								<label>性别:</label>
                                <label class="radio-inline">
                                	<input type="radio" name="sex" id="sex1" value="男" 
                                		<c:if test="${readerInfo.getSex().equals('男')}">checked</c:if>>男
                                </label>
                                <label class="radio-inline">
                                	<input type="radio" name="sex" id="sex2" value="女"
                                		<c:if test="${readerInfo.getSex().equals('女')}">checked</c:if>>女
                                </label>								
							</div>
							<div class="form-group">
								<label>年龄:</label> <input id="age" name="age" type="number" min="18" max="90" class="form-control"
									value="${readerInfo.getAge()}">
							</div>
							<div class="form-group">
								<label>证件类型:</label> <select name="typeName" class="form-control">
									<c:forEach items="${cardTypes}" var="cardType"
										varStatus="status">
										<option value="${cardType.getTypeName()}"
											<c:if test="${cardType.getTypeName().equals(readerInfo.getIdCard().getTypeName())}">selected</c:if>>
											<c:out value="${cardType.getTypeName()}" /></option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group">
								<label>证件号码:</label><font id="checkName" color="red"></font>
								<input id="idcardno" name="idCardNo" class="form-control" onblur="checkExist()"
									value="${readerInfo.getIdCardNo()}">
							</div>
							<div class="form-group">
								<label>办证日期:</label> <input id="date" name="date" class="form-control"
									value="${readerInfo.getDate()}">
							</div>
							<div class="form-group">
								<label>最大可借书量:</label> <input id="maxnum" name="maxNum" type="number" min="1" max="50" class="form-control"
									value="${readerInfo.getMaxNum()}">
							</div>
							<div class="form-group">
								<label>电话号码:</label> <input id="tel" name="tel" class="form-control"
									value="${readerInfo.getTel()}">
							</div>
							<div class="form-group">
								<label>押金:</label> <input name="keepMoney" class="form-control"
									value="${readerInfo.getKeepMoney()}">
							</div>
							<div class="form-group">
								<label>职业:</label> <input name="zy" class="form-control"
									value="${readerInfo.getZy()}">
							</div>
							<input type="hidden" name="id" value="${readerInfo.getId()}">
							<input type="hidden"  id="idcardno1" value="${readerInfo.getIdCardNo()}">

							<button id="submit" type="submit" class="btn btn-default">修改</button>
							<a href="<%=path%>/gzj/getReader" class="btn btn-default">取消</a>
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