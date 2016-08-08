<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
td {
	font-size: 9pt;
	color: #353535;
	line-height: 120%
}

body {
	font-size: 9pt;
	line-height: 120%
}

a:link {
	color: #000000;
	text-decoration: none
}

a:visited {
	color: #000000;
	text-decoration: none
}

a:active {
	color: #000000;
	text-decoration: none
}

a:hover {
	right: 0px;
	color: #336699;
	position: relative;
	top: 1px;
	text-decoration: none
}

.style4 {
	font-size: 18px;
	color: #0000FF;
}

.style1 {
	font-family: "幼圆";
	font-size: 18px;
	color: #FF0000;
}

.style5 {
	font-size: 16px
}
</style>

<script type="text/javascript">
	function check() {
		if (document.getElementById("sortName").value == "") {
			alert("请输入内容！");
			document.getElementById("sortName").focus();
			return false;
		}

		return true;
	}
</script>
</head>
<body>
	<div align="center">
		<form action="addSort.action" method="post" onsubmit="return check()">
			<table width="378" height=148 border=0 align=center>
				<tbody>
					<tr bgColor=#fcfcfc>
						<td width="51%" bgcolor="#FFFFFF">
							<div align="center" class="style4">
								<span class="style1">★ </span><span class="style5">类别名称：</span>
							</div>
						</td>
						<td width="49%" bgcolor="#FFFFFF"><div align="left">
								<input id="sortName" name="sortName" maxLength=20;>
							</div></td>
					</tr>
					<tr bgColor=#FFFFFF>
						<td colSpan=2 align="center"><input name="submit"
							type="submit" value="提交信息"></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>