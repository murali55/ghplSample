<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.3.js"></script>
<script type="text/javascript"></script>
<script src="jQvalidation/registration.js"></script>

</head>
<body>

<form id="regForm" action="./RegAction" method="post">
<table>
<tr>
<td>
  User name:

</td>
<td>
  <input type="text" name="username" id="username">

</td>
</tr>

<tr>
<td>
  Password:

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
  <input type="password" name="confirmpassword" id="confirmpassword">

</td>
</tr>
<tr>
<td>

  User email:
</td>
<td>
  <input type="text" name="useremail" id="useremail">

</td>
</tr>
<tr>
<td>
Phone number:
</td>
<td>
  <input type="text" name="phnNbr" id="phnNbr">

</td>

</tr>
<tr>
<td>
Country:
</td>
<td>
 <div class="col-md-4" >
    <select class="country">
          <option value=''><strong>Select</strong></option>
          <option value="India">India</option>
          <option value="Australia">Australia</option>
          <option value="America">America</option>
          <option value="Japan">Japan</option>
          
    </select>
</div> 

</td>
<tr>
<td>
State:
</td>
<td>
<div class="col-md-4" >
    <select class="state">
          <option value=''><strong>Select</strong></option>
    </select>
</div>  

</td>

</tr>
<tr>
<td>
City:
</td>
<td>
<div class="col-md-4" >
    <select class="city">
          <option value=''><strong>Select</strong></option>
    </select>
</div>  

</td>

</tr>
<tr>
<td>
  Gender:
</td>
<td>
  <input type="radio" name="gender" id="M">Male
  <input type="radio" name="gender" id="F">Female

</td>
</tr>

<tr>
<td>Address:</td>
<td>
<textarea rows="4" cols="50" name="address" id="address">
</textarea></td>

</tr>

<tr>
<td>
   Course:
</td>
<td>
  <input type="checkbox" name="a" id="a">A
  <input type="checkbox" name="b" id="b">B
  <input type="checkbox" name="c" id="c">C

</td>
</tr>

<tr>
<td>
  
<input id="regbtn" type="submit" value="submit">
</td>
</tr>
</table>






</form>

</body>
</html>