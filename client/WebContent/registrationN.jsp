<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.3.js"></script>
<script type="text/javascript">
$('document').ready(function(){
	
	
	$("#regbtn").click(function()
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
<body>

<h2>REGISTRATION FORM</h2>

<form  action="./RegAction" methood="post">
<table>
<tr>
<td>
  user name:

</td>
<td>
  <input type="text" name="username" id="username">

</td>
</tr>

<tr>
<td>
  password:

</td>
<td>
  <input type="password" name="password" id="password">

</td>
</tr>
<tr>
<td>
  Re-type password:

</td>
<td>
  <input type="password" name="re-password" id="re-password">

</td>
</tr>
<tr>
<td>

  user email:
</td>
<td>
  <input type="text" name="useremail" id="useremail">

</td>
</tr>
<tr>
<td>
phone number:
</td>
<td>
  <input type="text" name="phnNbr" id="phnNbr">

</td>

</tr>
<tr>
<td>
Country
</td>
<td>
  <select  value="select"name="country" >
  

</td>

</tr>
<tr>
<td>Address</td>
<td>
<input type="">
</td>

</tr>
<tr>
<td></td>
<td>
</td>

</tr>
<tr>
<td></td>
</tr>
<tr>
<td>
  gender:

</td>
<td>
  <input type="radio" name="gender" id="M">Male
  <input type="radio" name="gender" id="F">Female

</td>
</tr>

<tr>
<td>
   <input id="regbtn" type="submit" value="submit">

</td>
</tr>
</table>
 <br>
</form> 
</body>
</body>
</html>