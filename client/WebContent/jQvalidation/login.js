$('document').ready(function(){
	
	
	$("#loginbtn").click(function()
			{
		var us  =$("#username").val();
		if (us==''){
			alert("please enter the username");	
			return false;
		}
		var pwd  =$("#password").val();
		if (pwd==''){
			alert("please enter the password");	
			return false;
		}
	});
	$("#username").attr("placeholder", "enter user name").val("").focus().blur();
	$("#password").attr("placeholder", "enter password");
});
