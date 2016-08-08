/**
 * 检查用户名唯一性
 */
function validateUsersName() {	
	
	var usersName=$("#usersName").serialize();
	$.ajax({
		url : "checkUsersName.action",
		type : "post",
		dataType : "json",
		data : usersName,

		success : update_usersname
	});	
}

function update_usersname(info) {
	//alert(info);
	var json = eval(info);
	var str = json.info;
	if (str=="0") {
		$("#submit").removeAttr("disabled");
		$("#checkName").html("*");
	}else {
		$("#submit").attr({"disabled":"disabled"});
		$("#checkName").html(str+"已经存在");
	}	
}
