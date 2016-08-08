<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.gzj.entity.Sort"%>
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
		if (document.getElementById("goodsName").value == "") {
			alert("请输入商品名称！");
			document.getElementById("goodsName").focus();
			return false;
		}

		return true;
	}
</script>

<%
	List<Sort> sort = (List<Sort>) session.getAttribute("Sort");

	Iterator it = sort.iterator();
%>

</head>
<body>
	<form action="addGood.action" method="post" onsubmit="return check();">
		<table width="378" height=450 border=0 align=center>
			<tbody>
				<tr bgColor=#fcfcfc>
					<td width="51%" bgcolor="#FFFFFF">
						<div align="left" class="style4">
							<span class="style1">★ </span>名 称：
						</div>
					</td>
					<td bgcolor="#FFFFFF"><div align="left">
							<input id="goodsName" name="goodsName" maxLength=20>
						</div></td>
				</tr>
				<tr bgColor=#fcfcfc>
					<td bgcolor="#FFFFFF">
						<div align="left">
							<span class="style4"><span class="style1">★</span> <span
								class="style5">花 材</span>： </span>
						</div>
					</td>
					<td bgcolor="#FFFFFF"><div align="left">
							<font color=#cb6f00> <input name="goodsmaterial"
								id="goodsmaterial" maxLength=20>
							</font>
						</div></td>
				</tr>
				<tr bgColor=#fcfcfc>
					<td bgcolor="#FFFFFF">
						<div align="left" class="style4">
							<span class="style1">★</span> <span class="style5">包 装</span>：
						</div>
					</td>
					<td bgcolor="#FFFFFF"><div align="left">
							<font color=#cb6f00> <input id="goodsPackage"
								name="goodsPackage" maxLength=20>
							</font>
						</div></td>
				</tr>
				<tr bgColor=#fcfcfc>
					<td bgcolor="#FFFFFF">
						<div align="left" class="style4">
							<span class="style1">★ </span><span class="style5">花 语</span>：
						</div>
					</td>
					<td bgcolor="#FFFFFF"><div align="left">
							<input name="goodsLanguage" id="goodsLanguage" maxlength="20">
						</div></td>
				</tr>
				<tr bgColor=#fcfcfc>
					<td bgcolor="#FFFFFF">
						<div align="left" class="style4">
							<span class="style1">★ </span><span class="style5">价 格</span>：
						</div>
					</td>
					<td bgcolor="#FFFFFF"><div align="left">
							<input name="goodsPrice" id="goodsPrice" maxlength="20">
						</div></td>
				</tr>
				<tr bgColor=#fcfcfc>
					<td width="51%" bgcolor="#FFFFFF">
						<div align="left" class="style4">
							<span class="style1">★ </span><span class="style5">商品积分</span>：
						</div>
					</td>
					<td width="49%" bgcolor="#FFFFFF"><div align="left">
							<font color=#cb6f00> <input name="goodsCent"
								id="goodsCent" maxlength="20">
							</font>
						</div></td>
				</tr>
				<tr bgColor=#fcfcfc>
					<td bgcolor="#FFFFFF">
						<div align="left" class="style4">
							<span class="style1">★ </span><span class="style5">配送范围</span>：
						</div>
					</td>
					<td bgcolor="#FFFFFF"><div align="left">
							<input name="goodsScope" id="goodsScope" maxlength="20">
						</div></td>
				</tr>
				<tr bgColor=#fcfcfc>
					<td bgcolor="#FFFFFF">
						<div align="left" class="style4">
							<span class="style1">★</span> <span class="style5">适用场合</span>：
						</div>
					</td>
					<td bgcolor="#FFFFFF"><div align="left">
							<input name="goodsPlace" id="goodsPlace" maxlength="20">
						</div></td>
				</tr>
				<tr bgColor=#fcfcfc>
					<td bgcolor="#FFFFFF">
						<div align="left" class="style4">
							<span class="style1">★</span> <span class="style5">商品状态</span>：
						</div>
					</td>
					<td bgcolor="#FFFFFF"><div align="left">
							<input name="goodsHabitus" id="goodsHabitus" maxlength="20">
						</div></td>
				</tr>
				<tr bgColor=#fcfcfc>
					<td bgcolor="#FFFFFF"><div align="left">
							<span class="style4"><span class="style1"> ★</span> <span
								class="style5">商品种类</span>：</span>
						</div></td>
					<td bgcolor="#FFFFFF"><select name="sortName">
							<%
								while (it.hasNext()) {
									Sort temp = (Sort) it.next();
									String sortName = temp.getSortName();
							%>
							<OPTION value=<%=sortName%>><%=sortName%></OPTION>
							<%
								}
							%>
					</select></td>
				</tr>
				<tr bgColor=#FFFFFF>
					<td colSpan=2 align="center"><input name="submit"
						type="submit" value="提交信息"></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>