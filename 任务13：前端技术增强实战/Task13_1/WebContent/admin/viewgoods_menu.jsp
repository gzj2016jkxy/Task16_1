<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	background-image: url();
	background-color: #FFFFFF;
}

.style4 {
	color: #0000FF
}
</style>

<script type="text/javascript">
	function check() {
		if (document.getElementById("goodsName").value == "") {
			alert("请输入查询条件！");
			document.getElementById("goodsName").focus();
			return false;
		}
		
		return true;
	}
			
</script>

</head>
<body>
	<form action="getGoodByName.action" method="post" name="form2"
		id="form2" onsubmit="return check();">
		<div align="center">
			<p class="style1">
				★ <span class="style4">按商品名进行查找:</span> <input name="goodsName"
					type="text" id="goodsName"> <input type="submit"
					name="Submit2" value="查找">
			</p>
		</div>
	</form>
</body>
</html>