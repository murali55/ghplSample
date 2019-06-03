<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.3.js"></script>

<script>
$('document').ready(function(){
var series = [
	{name: 'Company A', product: 'A1'},
	{name: 'Company A', product: 'A2'},
	{name: 'Company A', product: 'A3'},
	{name: 'Company B', product: 'B1'},
	{name: 'Company B', product: 'B2'}
	]

	$(".country").change(function(){
	    var company = $(this).val();
	    var options =  '<option value=""><strong>Products</strong></option>'; //create your "title" option
	    $(series).each(function(index, value){ //loop through your elements
	        if(value.name == company){ //check the company
	            options += '<option value="'+value.product+'">'+value.product+'</option>'; //add the option element as a string
	        }
	    });

	    $('.product').html(options); //replace the selection's html with the new options
	});
var serie = [
	{name1:  'A1', prd: 'A11'},
	{name1:  'B1', prd: 'A22'},
	
	]

	$(".product").change(function(){
	    var product = $(this).val();
	    var options =  '<option value=""><strong>Products</strong></option>'; //create your "title" option
	    $(serie).each(function(index, value){ //loop through your elements
	        if(value.name1 == product){ //check the company
	            options += '<option value="'+value.prd+'">'+value.prd+'</option>'; //add the option element as a string
	        }
	    });

	    $('.prd').html(options); //replace the selection's html with the new options
	});
});
	</script>

<body>
<div class="col-md-4" >
    <select class="country">
          <option value=''><strong>Name</strong></option>
          <option value="Company A">Company A</option>
          <option value="Company B">Company B</option>
        
          
    </select>
</div>
<div class="col-md-4" >
    <select class="product">
          <option value=''><strong>Products</strong></option>
    </select>
</div>
<div class="col-md-4" >
    <select class="prd">
          <option value=''><strong>prd</strong></option>
    </select>
</div>
</body>
</html>