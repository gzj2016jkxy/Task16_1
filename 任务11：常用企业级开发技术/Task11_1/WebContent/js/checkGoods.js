/**
 * 检查商品信息
 */
function checkRate(input) {
	var re = /^[0-9]+.?[0-9]*$/; // 判断字符串是否为数字 //判断正整数 /^[1-9]+[0-9]*]*$/
	var nubmer = document.getElementById(input).value;

	if (!re.test(nubmer)) {
		alert("请输入数字");
		document.getElementById(input).value = "";
		document.getElementById(input).focus();
		return false;
	}

	if (input == "agio") {
		if (nubmer >= 1 || Number <= 0) {
			alert("折扣应大于0且小于1");
			document.getElementById(input).value = "";
			document.getElementById(input).focus();
			return false;
		}
	}
	return true;
}

function check() {

	if (document.getElementById("commodityName").value == "") {
		alert("请输入商品名称");
		document.getElementById("commodityName").focus();
		return false;
	}

	if (document.getElementById("price").value == "") {
		alert("请输入价格");
		document.getElementById("price").focus();
		return false;
	}

	if (document.getElementById("agio").value == "") {
		alert("请输入折扣");
		document.getElementById("agio").focus();
		return false;
	}

	if (!checkRate("price")) {
		return false;
	}
	if (!checkRate("agio")) {
		return false;
	}
	
	return true;
}