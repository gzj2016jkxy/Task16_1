/**
 * 检查VIPID
 */
function validateVipId() {	
	
	var vipid=$("#vipid").serialize();
	$.ajax({
		url : "checkVIP.action",
		type : "post",
		dataType : "json",
		data : vipid,

		success : update_vip
	});	
}

function update_vip(info) {
	//alert(info);
	var json = eval(info);
	var str = json.info;
	if (str=="0") {
		$("#vipmessage").html("不存在此VIP!!!");
		$("#name").html("");
	}else {
		$("#vipmessage").html("");
		$("#name").html(str);
	}	
}

/**
 * 检查商品ID
 */
function validateGoodsId() {	
	
	var commodityId=$("#commodityId").serialize();
	$.ajax({
		url : "checkGoods.action",
		type : "post",
		dataType : "json",
		data : commodityId,

		success : update_goods
	});	
}

function update_goods(info) {
	//alert(info);
	var json = eval(info);
	var str = json.info;
	//alert(str);
	if (str=="0") {
		$("#goodsmessage").html("不存在此商品!!!");
		$("#commodityName").html("");
		$("#price").html("");
		$("#practicePrice").html("");
	}else {
		$("#goodsmessage").html("");
		var strs=new Array();
		strs=str.split(',');
		$("#commodityName").html(strs[0]);
		$("#price").html(strs[1]);		
		$("#practicePrice").html(strs[2]);
	}	
}

/**
 * 表单提交前的非空验证
 */
function check() {

	if (document.getElementById("vipid").value == "") {
		alert("请输入已存在VIP编号");		
		return false;
	}

	if (document.getElementById("name").innerHTML == "") {
		alert("请输入已存在VIP编号");		
		return false;
	}	

	if (document.getElementById("commodityId").value == "") {
		alert("请输入已存在的商品编号");		
		return false;
	}
	
	if (document.getElementById("commodityName").innerHTML == "") {
		alert("请输入已存在的商品编号");		
		return false;
	}
	
	if (document.getElementById("price").innerHTML == "") {
		alert("请输入已存在的商品编号");		
		return false;
	}
	
	if (document.getElementById("practicePrice").innerHTML == "") {
		alert("请输入已存在的商品编号");		
		return false;
	}

	return true;
}