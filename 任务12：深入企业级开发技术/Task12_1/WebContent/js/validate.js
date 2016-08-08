/**
 * 检查输入
 */
function checkInput(){
	if(document.getElementById("searchcontent").value==""){
		alert("请输入搜索条件！");
		document.getElementById("searchcontent").focus();
		return false;
	}
	return true;
}