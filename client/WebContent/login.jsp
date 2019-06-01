<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.3.js"></script>
<script>
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
});
</script>
</head>
<body>

<h2>LOGIN FORM</h2>

<form name="login" action="./LoginAction" method="post">
  user name:<br>
  <input type="text" name="username" id="username">
  <br>
  password:<br>
  <input type="password" name="password" id="password">
  <br><br>
  
  <input id="loginbtn" type="submit" value="submit">
</form> 
</body>
</html>
