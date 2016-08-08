<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加用户</title>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

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

<script language="JavaScript">

function checkuserinfo()
{
   if(checkspace(document.userinfo.usersName.value)) {
	document.userinfo.usersName.focus();
    alert("对不起，请填写用户名！");
	return false;
  }
     if(checkspace(document.userinfo.usersTrueName.value)) {
	document.userinfo.usersTrueName.focus();
    alert("对不起，请填写真实姓名！");
	return false;
  }
       if(checkspace(document.userinfo.usersAddress.value)) {
	document.userinfo.usersAddress.focus();
    alert("对不起，请填写您的通讯地址！");
	return false;
  }
         if(checkspace(document.userinfo.usersPhone.value)) {
	document.userinfo.usersPhone.focus();
    alert("对不起，请填写您的联系电话！");
	return false;
  }
    if(checkspace(document.userinfo.usersPass.value) || document.userinfo.usersPass.value.length < 3 ) {
	document.userinfo.usersPass.focus();
    alert("密码长度不能为空，在3位到20位之间，请重新输入！");
	return false;
  }
    if(document.userinfo.usersPass.value != document.userinfo.usersRepass.value) {
	document.userinfo.usersPass.focus();
	document.userinfo.usersPass.value = '';
	document.userinfo.usersRepass.value = '';
    alert("两次输入的密码不同，请重新输入！");
	return false;
  }
 if(document.userinfo.usersE_mail.value.length!=0)
  {
    if (document.userinfo.usersE_mail.value.charAt(0)=="." ||        
         document.userinfo.usersE_mail.value.charAt(0)=="@"||       
         document.userinfo.usersE_mail.value.indexOf('@', 0) == -1 || 
         document.userinfo.usersE_mail.value.indexOf('.', 0) == -1 || 
         document.userinfo.usersE_mail.value.lastIndexOf("@")==document.userinfo.usersE_mail.value.length-1 || 
         document.userinfo.usersE_mail.value.lastIndexOf(".")==document.userinfo.usersE_mail.value.length-1)
     {
      alert("Email地址格式不正确！");
      document.userinfo.usersE_mail.focus();
      return false;
      }
   }
 else
  {
   alert("Email不能为空！");
   document.userinfo.usersE_mail.focus();
   return false;
   }
}

function checkspace(checkstr) {
  var str = '';
  for(i = 0; i < checkstr.length; i++) {
    str = str + ' ';
  }
  return (str == checkstr);
}

</script>


</head>
<body>
	<form name="userinfo" action="adminReg.action" method="post">
		<table width="378" height="450" border="0" align="center">
			<tbody>
				<tr bgcolor="#fcfcfc">
					<td width="51%" bgcolor="#FFFFFF">
						<div align="left" class="style4">
							<span class="style1">★ </span><span class="style5">用 户 名</span>：
						</div>
					</td>
					<td bgcolor="#FFFFFF"><div align="left">
							<input id="usersName" maxlength="20" name="usersName">
						</div></td>
				</tr>
				<tr bgcolor="#fcfcfc">
					<td bgcolor="#FFFFFF">
						<div align="left">
							<span class="style4"><span class="style1">★</span> <span
								class="style5">密 码</span>： </span>
						</div>
					</td>
					<td bgcolor="#FFFFFF"><div align="left">
							<font color="#cb6f00"> <input name="usersPass"
								type="password" id="usersPass" maxlength="20">
							</font>
						</div></td>
				</tr>
				<tr bgcolor="#fcfcfc">
					<td bgcolor="#FFFFFF">
						<div align="left" class="style4">
							<span class="style1">★</span> <span class="style5">确认密码</span>：
						</div>
					</td>
					<td bgcolor="#FFFFFF"><div align="left">
							<font color="#cb6f00"> <input id="usersRepass"
								type="password" maxlength="20" name="usersRepass">
							</font>
						</div></td>
				</tr>
				<tr bgcolor="#fcfcfc">
					<td bgcolor="#FFFFFF">
						<div align="left" class="style4">
							<span class="style1">★ </span><span class="style5">密码提问</span>：
						</div>
					</td>
					<td bgcolor="#FFFFFF"><div align="left">
							<input name="usersPassQuestion" id="usersPassQuestion"
								maxlength="20;">
						</div></td>
				</tr>
				<tr bgcolor="#fcfcfc">
					<td bgcolor="#FFFFFF">
						<div align="left" class="style4">
							<span class="style1">★ </span><span class="style5">密码答案</span>：
						</div>
					</td>
					<td bgcolor="#FFFFFF"><div align="left">
							<input name="usersPassReply" id="usersPassReply" maxlength="20">
						</div></td>
				</tr>
				<tr bgcolor="#fcfcfc">
					<td width="51%" bgcolor="#FFFFFF">
						<div align="left" class="style4">
							<span class="style1">★ </span><span class="style5">真实姓名</span>：
						</div>
					</td>
					<td width="49%" bgcolor="#FFFFFF"><div align="left">
							<font color="#cb6f00"> <input name="usersTrueName"
								id="usersTrueName" maxlength="20">
							</font>
						</div></td>
				</tr>
				<tr bgcolor="#fcfcfc">
					<td bgcolor="#FFFFFF">
						<div align="left" class="style4">
							<span class="style1">★ </span><span class="style5">联系地址</span>：
						</div>
					</td>
					<td bgcolor="#FFFFFF"><div align="left">
							<input name="usersAddress" id="usersAddress" maxlength="20">
						</div></td>
				</tr>
				<tr bgcolor="#fcfcfc">
					<td bgcolor="#FFFFFF">
						<div align="left" class="style4">
							<span class="style1">★</span> <span class="style5">联系电话</span>：
						</div>
					</td>
					<td bgcolor="#FFFFFF"><div align="left">
							<input name="usersPhone" id="usersPhone" maxlength="20">
						</div></td>
				</tr>
				<tr bgcolor="#fcfcfc">
					<td bgcolor="#FFFFFF">
						<div align="left" class="style4">
							<span class="style1">★</span> <span class="style5">电子邮件</span>：
						</div>
					</td>
					<td bgcolor="#FFFFFF"><div align="left">
							<input name="usersE_mail" id="usersE_mail" maxlength="20">
						</div></td>
				</tr>
				<tr bgcolor="#FFFFFF">
					<td colspan="2" align="center"><input name="submit"
						type="submit" value="提交信息" onclick="return checkuserinfo();"></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>