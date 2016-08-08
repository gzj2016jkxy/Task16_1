<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<script type="text/javascript">
	function check1() {
		if (document.getElementById("usersId").value == "") {
			alert("请输入查询条件！");
			document.getElementById("usersId").focus();
			return false;
		}
		
		return true;
	}
	
	function check2() {
		
		if (document.getElementById("usersName").value == "") {
			alert("请输入查询条件！");
			document.getElementById("usersName").focus();
			return false;
		}

		return true;
	}
	
</script>

<style type="text/css">
.style1 {
	font-family: "幼圆";
	font-size: 18px;
	color: #FF0000;
}

.style3 {
	font-family: "楷体_GB2312";
	font-size: 16px;
	color: #FF0000;
}

body {	
	background-color: #FFFFFF;
}

.style4 {
	color: #0000FF
}
</style>
</head>
<body>
	<form action="<%=path%>/getUserByID.action" method="post" name="form1"
		id="form1" onsubmit="return check1();">
		<p align="center" class="style1">
			★ <a href="getAllUser.action"> 查看所有注册用户</a>
		</p>
		<p align="center" class="style1">
			★ <span class="style4">按用户ID进行查找：</span> <input name="usersId"
				type="number" id="usersId"> <input type="submit"
				 value="查找">
		</p>
	</form>
	<form action="getUserByName.action" method="post" name="form2"
		id="form2"  onsubmit="return check2();">
		<div align="center">
			<p align="center" class="style1">
				★ <span class="style4">按用户名进行查找：</span> <input name="usersName"
					type="text" id="usersName"> <input type="submit" 
					value="查找">

			</p>
		</div>
	</form>
</body>
</html>