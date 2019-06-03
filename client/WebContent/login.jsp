<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.3.js"></script>
<script
src="jQvalidation/login.js">
</script>
</head>
<body>

<h2>LOGIN FORM</h2>

<form id="loginForm" name="login" action="./LoginAction" method="post">
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
