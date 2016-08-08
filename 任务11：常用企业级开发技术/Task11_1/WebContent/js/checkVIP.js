/**
 * 检查VIP信息
 */
function check() {

	if (document.getElementById("name").value == "") {
		alert("请输入姓名");
		document.getElementById("name").focus();
		return false;
	}

	if (document.getElementById("age").value == "") {
		alert("请输入年龄");
		document.getElementById("age").focus();
		return false;
	}

	var age = parseInt(document.getElementById("age").value);

	if (age <= 0 || age > 150) {
		alert("请输入正确年龄");
		document.getElementById("age").value = "";
		document.getElementById("age").focus();
		return false;
	}

	if (document.getElementById("joinTime").value == "") {
		alert("入会时间不能为空");
		document.getElementById("joinTime").focus();
		return false;
	}

	return true;
}