/**
 * 用户添加、移除收藏
 */
function userCollect(btn) {	
	var id="id="+btn.id;
	
	if (btn.value=="添加收藏") {
		add(id,btn);		
	}else {
		del(id,btn);		
	}	
}

function add(id,btn){
	
	$.ajax({
		url : "addCollect.action",
		type : "post",
		dataType : "json",
		data : id,

		success : function(info){
			var json = eval(info);
			var str = json.info;	
			if (str=="fail") {
				alert("操作失败!!!");		
			}else {
				btn.value="取消收藏";
				alert("收藏成功!!!");
				
			}	
		}
	});	
}


function del(id,btn){
	$.ajax({
		url : "delCollect.action",
		type : "post",
		dataType : "json",
		data : id,

		success : function(info){
			var json = eval(info);
			var str = json.info;	
			if (str=="fail") {
				alert("操作失败!!!");		
			}else {
				btn.value="添加收藏";
				alert("取消成功!!!");
			}	
		}
	});	
}
