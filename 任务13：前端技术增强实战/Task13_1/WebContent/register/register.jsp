<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
	<script src="../js/jquery.js"></script>
	<script src="../js/validate.js"></script>
	
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<style>
td {
	font-size: 9pt; color: #353535; line-height: 120%
}
body {
	font-size: 9pt; line-height: 120%
}
a:link {
	color: #000000; text-decoration: none
}
a:visited {
	color: #000000; text-decoration: none
}
a:active {
	color: #000000; text-decoration: none
}
a:hover {
	right: 0px; color: #336699; position: relative; TOP: 1px; text-decoration: none
}
.style1 {
	color: #353535
}
.style3 {
	color: #666666
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

<table cellspacing="0" cellpadding="0" width="812" align="center" bgcolor="#ffffff" border="0">
  <tbody>
  <tr>
    <td><img height="1" alt="" src="../registerImage.files/spacer.gif" width="38" border="0"></td>
    <td><img height="1" alt="" src="../registerImage.files/spacer.gif" width="63" border="0"></td>
    <td><img height="1" alt="" src="../registerImage.files/spacer.gif" width="59" border="0"></td>
    <td><img height="1" alt="" src="../registerImage.files/spacer.gif" width="56" border="0"></td>
    <td><img height="1" alt="" src="../registerImage.files/spacer.gif" width="62" border="0"></td>
    <td><img height="1" alt="" src="../registerImage.files/spacer.gif" width="16" border="0"></td>
    <td><img height="1" alt="" src="../registerImage.files/spacer.gif" width="44" border="0"></td>
    <td><img height="1" alt="" src="../registerImage.files/spacer.gif" width="77" border="0"></td>
    <td><img height="1" alt="" src="../registerImage.files/spacer.gif" width="82" border="0"></td>
    <td><img height="1" alt="" src="../registerImage.files/spacer.gif" width="77" border="0"></td>
    <td><img height="1" alt="" src="../registerImage.files/spacer.gif" width="80" border="0"></td>
    <td><img height="1" alt="" src="../registerImage.files/spacer.gif" width="72" border="0"></td>
    <td><img height="1" alt="" src="../registerImage.files/spacer.gif" width="34" border="0"></td>
  </tr>
  <tr>
    <td colspan="6" rowspan="2">
		<img height="79" alt="" src="../registerImage.files/title_r1_c1.gif" width="294" border="0" name="title_r1_c1">
	</td>
    <td bgcolor="#ffffff" colspan="7">
      <div align="right">
		<a name="top"></a>
		<a href="cart.jsp">
			<img height="20" src="../blessingImage.files/top_cart.gif" width="76" border="0">
		</a> 
		<a href="checkMyInfo.jsp">
			<img height="20" src="../registerImage.files/top_my.gif" width="76" border="0">
		</a> 
		<a href="../tourist/help.jsp">
			<img height="20" src="../registerImage.files/top_faq.gif" width="76" border="0">
		</a>  
		<a href="<%=path%>/logout.action">
			<img height="20" src="../registerImage.files/top_wh.gif" width="76" border="0">
		</a>
	  </div>
	</td>
  </tr>
  <tr>
    <td bgcolor="#ffffff" colspan="7">
      <table height="44" cellspacing="0" cellpadding="0" width="61%" align="right" border="0">
        <tbody>
          <tr>
            <td>
              <div align="left">订花热线：010-12345678</div>
			</td>
          </tr>
          <tr>
            <td>
              <div align="left">订花 Q&nbsp;Q：12345678</div>
			</td>
          </tr>
        </tbody>
      </table>
	</td>
  </tr>
  <tr>
					<td><img height="27" alt=""
						src="../registerImage.files/title_r2_c1.gif" width="38" border="0"
						name="title_r2_c1"></td>
					<td><a href="../index.jsp"><img height="27" alt=""
							src="../registerImage.files/title_r2_c2.gif" width="63" border="0"
							name="title_r2_c2"></a></td>
					<td colspan="11"><a href="getProduce.action"><img
							height="27" alt="" src="../blessingImage.files/title_r2_c10.gif"
							width="77" border="0" name="title_r2_c10"></a><a
						href="<%=path%>/getLeaveLanguage.action"><img height="27" alt=""
							src="../blessingImage.files/title_r2_c11.gif" width="80" border="0"
							name="title_r2_c11"></a><a href="<%=path%>/tourist/flowersLanguage.jsp"><img
							height="27" alt="" src="../blessingImage.files/title_r2_c12.gif"
							width="72" border="0" name="title_r2_c12"></a><img height="27"
						alt="" src="../registerImage.files/title_r2_c13.gif" width="482"
						border="0" name="title_r2_c13"></td>
				</tr>
  </tbody>
</table>
<table cellspacing="0" cellpadding="0" width="748" align="center" background="../registerImage.files/bj_x.gif" border="0">
  <tbody>
  <tr>
    <td height="1"></td>
  </tr>  
  </tbody>
</table>
<table cellspacing="0" cellpadding="0" width="812" align="center" border="0">
  <tbody>
  <tr>
    <td style="padding-top: 10px; letter-spacing: 1px" height="40">
		<font color="#7f7f7f">您的位置：
			<span style="font-FAMILY: Arial">Home </span>&gt; 
				新会员注册
		</font>
	</td>
  
  </tr>
  </tbody>
</table>
<table cellspacing="0" cellpadding="0" width="812" align="center" bgcolor="#cccccc" border="0">
  <tbody>
  <tr>
    <td>
      <form name="userinfo" action="reg.action" method="post">
      <table height="321" cellspacing="1" cellpadding="2" width="812" align="center" border="0">
        <tbody>
        <tr bgcolor="#a4ffb8">
          <td colspan="2">
            <div align="left"><font color="#4ea3a5"><b>　</b></font><b><span class="style3">会员注册</span></b></div>
		  </td>
		</tr>
        <tr bgcolor="#fcfcfc">
          <td width="24%">
            <div align="center"><font color="#cb6f00">用 户 名：</font></div>
		  </td>
          <td width="76%">
			<div align="left">
				<input id="usersName" onblur="validateUsersName()" style="border-right: #ffffff 1px groove; border-top: #ffffff 1px groove; border-left: #ffffff 1px groove; color: #333333; border-bottom: #ffffff 1px groove; height: 18px; background-color: #ffcc66" maxlength="20" name="usersName"> 
				<font color="red" id="checkName">*</font>中文或英文，请勿有空格
			</div>
		  </td>
		</tr>
        <tr bgcolor="#fcfcfc">
          <td>
            <div align="center"><font color="#cb6f00">密　　码：</font><font color="#cb6f00"> </font></div>
		  </td>
          <td>
			<div align="left">
				<font color="#cb6f00">
					<input id="usersPass" style="border-right: #ffffff 1px groove; border-top: #ffffff 1px groove; border-left: #ffffff 1px groove; color: #333333; border-botttom: #ffffff 1px groove; height: 18px; BACKGROUND-color: #ffcc66" type="password" maxlength="20" name="usersPass"> 
					<font color="red">*</font> 
				</font>长度必须大于3个字符小于20个字符
			</div>
		  </td>
		</tr>
        <tr bgcolor="#fcfcfc">
          <td>
            <div align="center"><font color="#cb6f00">确认密码： </font></div>
		  </td>
          <td>
			<div align="left">
				<font color="#cb6f00">
					<input id="usersRepass" style="border-right: #ffffff 1px groove; border-top: #ffffff 1px groove; border-left: #ffffff 1px groove; color: #333333; border-botttom: #ffffff 1px groove; height: 18px; BACKGROUND-color: #ffcc66" type="password" maxlength="20" name="usersRepass"> 
					<font color="red">*</font> 
				</font>请再次输入密码，以免设置密码出错
			</div>
		  </td>
		</tr>
        <tr bgcolor="#fcfcfc">
          <td>
            <div align="center"><font color="#cb6f00">密码提问：</font></div>
		  </td>
          <td>
			<div align="left">
                <input id="usersPassQuestion" style="border-right: #ffffff 1px groove; border-top: #ffffff 1px groove; border-left: #ffffff 1px groove; color: #333333; border-botttom: #ffffff 1px groove; height: 18px; BACKGROUND-color: #ffcc66" name="usersPassQuestion"> 
                用于密码遗忘时使用,可不填
			</div>
		  </td>
		</tr>
        <tr bgcolor="#fcfcfc">
          <td>
            <div align="center"><font color="#cb6f00">密码答案：</font></div>
		  </td>
          <td>
			<div align="left">
                <input id="usersPassReply" style="border-right: #ffffff 1px groove; border-top: #ffffff 1px groove; border-left: #ffffff 1px groove; color: #333333; border-botttom: #ffffff 1px groove; height: 18px; BACKGROUND-color: #ffcc66" name="usersPassReply"> 
                可不填
			</div>
		  </td>
		</tr>
        <tr bgcolor="#a4ffb8">
          <td colspan="2">
            <p><font color="#4ea3a5"><b class="efont">　</b></font><b class="efont"><span class="style3">请填写您的个人信息</span></b><br></p>
		  </td>
		</tr>
        <tr bgcolor="#fcfcfc">
          <td width="24%">
            <div align="center"><font color="#cb6f00">真实姓名： </font></div>
		  </td>
          <td width="76%">
			<div align="left">
				<font color="#cb6f00">
					<input id="usersTrueName" style="border-right: #ffffff 1px groove; border-top: #ffffff 1px groove; border-left: #ffffff 1px groove; color: #333333; border-botttom: #ffffff 1px groove; height: 18px; BACKGROUND-color: #ffcc66" name="usersTrueName"> 
				</font>
				<font color="red">*</font>送花时我们将向接收人说明
			</div>
		  </td>
		</tr>
        <tr bgcolor="#fcfcfc">
          <td>
            <div align="center"><font color="#cb6f00">联系地址：</font></div>
		  </td>
          <td>
			<div align="left">
				<input id="usersAddress" style="border-right: #ffffff 1px groove; border-top: #ffffff 1px groove; border-left: #ffffff 1px groove; color: #333333; border-botttom: #ffffff 1px groove; height: 18px; BACKGROUND-color: #ffcc66" size="30" name="usersAddress"> 
				<font color="red">*</font>可简单填写,比如北京
			</div>
		  </td>
		</tr>
        <tr bgcolor="#fcfcfc">
          <td>
            <div align="center"><font color="#cb6f00">联系电话：</font> </div>
		  </td>
          <td>
			<div align="left">
				<input id="usersPhone" style="border-right: #ffffff 1px groove; border-top: #ffffff 1px groove; border-left: #ffffff 1px groove; color: #333333; border-botttom: #ffffff 1px groove; height: 18px; BACKGROUND-color: #ffcc66" name="usersPhone"> 
				<font color="red">*</font> 很重要,请一定正确填写
			</div>
		  </td>
		</tr>
        <tr bgcolor="#fcfcfc">
          <td>
            <div align="center"><font color="#cb6f00">电子邮件：</font> </div>
		  </td>
          <td>
			<div align="left">
				<input id="usersE_mail" style="border-right: #ffffff 1px groove; border-top: #ffffff 1px groove; border-left: #ffffff 1px groove; color: #333333; border-botttom: #ffffff 1px groove; height: 18px; BACKGROUND-color: #ffcc66" name="usersE_mail"> 
				<font color="red">*</font> 填写您的电子邮箱，方便联系(格式必须是 xxx@xxx.xxx 的形式) 
			</div>
		  </td>
		</tr>
        <tr bgcolor="#fcfcfc">
          <td align="center" colspan="2"><br><input id="submit" type="submit" value="提交信息" onclick="return checkuserinfo();"> (带<font color="red">*</font>为必填项) 
		  </td>
		</tr>
	    </tbody>
	  </table>
      </form>
	</td>
  </tr>
  </tbody>
</table>
<br/>
<strong></strong>

<table cellspacing="0" cellpadding="0" width="812" align="center" bgcolor="#e0e0e0" border="0">
  <tbody>
  <tr>
	<td>&nbsp;</td>
  </tr>
  </tbody>
</table>
<table width="812" height="48" border="0" align="center" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td height="16" bgcolor="#f5f5f5">
		<div align="center"><span class="cfont"><font color="#7f7f7f"><b><a href="../admin/CheckLogin.jsp">管理员登录</a></b></font></span></div>
	  </td>
    </tr>
    <tr>
      <td height="31" bgcolor="#f5f5f5">
		<div align="center">Copyright ©  All Rights Reserved </div>
	  </td>
    </tr>
  </tbody>
</table>
<p>&nbsp;</p>

</body>
</html>