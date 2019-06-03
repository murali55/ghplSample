$('document').ready(function(){
	
	
	$("#regbtn").click(function()
			{
		var un  =$("#username").val();
		if (un==''){
			alert("please enter the username");	
			return false;
		}
		var pwd  =$("#password").val();
		if (pwd==''){
			alert("please enter the password");	
			return false;
		}
		var re_pwd  =$("#confirmpassword").val();
		if (re_pwd==''){
			alert("please enter the password");	
			return false;
		}
		if(pwd!==re_pwd){
			alert("password not matching");	
			return false;
		}
		
		var ue  =$("#useremail").val();
		if (ue==''){
			alert("please enter the useremail");	
			return false;
		}
		var pn  =$("#phnNbr").val();
		if (pn==''){
			alert("please enter the phone number");	
			return false;
		}
		var cty  =$("#country").val();
		if (cty==''){
			alert("please enter the country");	
			return false;
		}
		var st  =$("#state").val();
		if (st==''){
			alert("please enter the state");	
			return false;
		}
		var ct  =$("#city").val();
		if (ct==''){
			alert("please enter the city");	
			return false;
		}
		var ad  =$("#address").val();
		if (ad==''){
			alert("please enter the address");	
			return false;
		}
		
		
	});
	 $('#regForm').submit(function() {
	        var error = 0;
	        if (!($('#a').is(':checked'))) {
	            error = 1
	            alert("Please Tick the Agree to Terms of Use");
	        }
	        

	        if (error) {
	            return false;
	        } else {
	            return true;
	        }

	    });
	 var series = [
			{name: 'India', state: 'Telanga'},
			{name: 'India', state: 'AndhraPradesh'},
			{name: 'India', state: 'Kerala'},
			{name: 'India', state: 'Tamilnadu'},

			{name: 'Australia', state: 'New South Waves'},
			{name: 'Australia', state: 'Queensland'},
			{name: 'Australia', state: 'Tasmania'},
			{name: 'Australia', state: 'Victorya'},

			{name: 'America', state: 'Alabama	'},
			{name: 'America', state: 'Alaska'},
			{name: 'America', state: 'Arizona'},
			{name: 'America', state: 'California'},
			{name: 'America', state: 'Hawaii'},

			{name: 'Japan', state: 'Chiba'},
			{name: 'Japan', state: 'Ehime'},
			{name: 'Japan', state: 'Fukuoka'},
			{name: 'Japan', state: 'Gunma'},
			{name: 'Japan', state: 'Hyogo'},

			]

			$(".country").change(function(){
			    var country = $(this).val();
			    var options =  '<option value=""><strong>Select</strong></option>'; //create your "title" option
			    $(series).each(function(index, value){ //loop through your elements
			        if(value.name == country){ //check the company
			            options += '<option value="'+value.state+'">'+value.state+'</option>'; //add the option element as a string
			        }
			    });

			    $('.state').html(options); //replace the selection's html with the new options
			});
		var serie = [
			{name1:  'Telanga', city: 'Hyderabad'},
			{name1:  'Telanga', city: 'Rangareddy'},
			{name1:  'Telanga', city: 'Warangal'},
			{name1:  'Telanga', city: 'Kothagudem'},

			{name1:  'AndhraPradesh', city: 'Guntur'},
			{name1:  'AndhraPradesh', city: 'Vijayawada'},
			{name1:  'AndhraPradesh', city: 'Guntur'},
			{name1:  'AndhraPradesh', city: 'Kadapa'},
			
			{name1:  'Kerala', city: 'A21'},
			{name1:  'Kerala', city: 'A22'},
			{name1:  'Kerala', city: 'A23'},
			{name1:  'Kerala', city: 'A24'},

			{name1:  'Tamilnadu', city: 'B21'},
			{name1:  'Tamilnadu', city: 'B22'},
			{name1:  'Tamilnadu', city: 'B23'},
			{name1:  'Tamilnadu', city: 'B24'},

			{name1:  'New South Waves', city: 'C21'},
			{name1:  'New South Waves', city: 'C22'},
			{name1:  'New South Waves', city: 'C23'},
			{name1:  'New South Waves', city: 'C2$'},

			{name1:  'Queensland', city: 'D22'},
			{name1:  'Queensland', city: 'D24'},
			{name1:  'Queensland', city: 'D25'},
			{name1:  'Queensland', city: 'D26'},
	
			{name1:  'Tasmania', city: 'A22'},
			{name1:  'Tasmania', city: 'A22'},
			{name1:  'Tasmania', city: 'A22'},
			{name1:  'Tasmania', city: 'A22'},

			{name1:  'Victorya', city: 'A22'},
			{name1:  'Victorya', city: 'A22'},
			{name1:  'Victorya', city: 'A22'},
			{name1:  'Victorya', city: 'A22'},

			{name1:  'Alabama', city: 'A22'},
			{name1:  'Alabama', city: 'A22'},
			{name1:  'Alabama', city: 'A22'},
			{name1:  'Alabama', city: 'A22'},


			]

			$(".state").change(function(){
			    var state = $(this).val();
			    var options =  '<option value=""><strong>Select</strong></option>'; //create your "title" option
			    $(serie).each(function(index, value){ //loop through your elements
			        if(value.name1 == state){ //check the company
			            options += '<option value="'+value.city+'">'+value.city+'</option>'; //add the option element as a string
			        }
			    });

			    $('.city').html(options); //replace the selection's html with the new options
			
		});	
});
