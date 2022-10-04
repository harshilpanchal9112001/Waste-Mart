<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Home | Customer-login</title>
  <link rel="stylesheet" href="assets/css/style-freedom.css">
  <script src='js/jquery.min.js'></script><script src="js/monetization.js" type="text/javascript"></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>
  <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
  <link rel="icon" href="waste-mart.ico" type="iamge/x-icon">
  <script lang="javascript" type="text/javascript">
  
	function passwordValidation()
		{
		    var name=document.getElementById("password").value;  	 			
			var regEx = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
			var temp=regEx.test(name);
			if(name.length == 0)
			{
				document.getElementById("passworderror").innerHTML="";
 				document.getElementById("passworderror").setAttribute("style","visibility: visible;font-size: 16px;");
			}
			else
			{  
 				if(temp)
 			 	{  	 					
 					document.getElementById("passworderror").innerHTML="";
 	  				document.getElementById("passworderror").setAttribute("style","visibility: visible;font-size: 16px;color:green;");  	 	  					 	  	 	  					  				
 			 	}
 			 	else
 				{  	 					
 					document.getElementById("passworderror").innerHTML="  Password must contain atleast (eg. A,a,@,2) & 8 Character.";
 	  				document.getElementById("passworderror").style.visibility="visible";
 	  				document.getElementById("passworderror").setAttribute("style","visibility: visible;font-size: 16px;color:red;");  	 	  				  	 	  				
 	  				
 				}
			}
		}
  </script>
</head>
<body>
<%@include file="header2.jsp" %>
<!-- inner banner -->
<section class="w3l-inner-banner-main">
    <div class="about-inner" style="background-size:auto;">
        <div class="wrapper">
            
            <ul class="breadcrumbs-custom-path">
                <h3>Login</h3>
                <li><a href="index.jsp">Customer <span class="fa fa-angle-right" aria-hidden="true"></span></a></li>
                <li>Login</li>
            </ul>
        </div>
    </div>
</section>
<!-- //covers -->
<!-- form -->
<section class="w3l-form1">
	<div class="form">
		<div class="wrapper">
			<div class="form-content">
				<div class="form-left">				
					<div class="middle">
						<h4>Customer Login</h4>
					</div>
					<form action="CustomerRegistrationController" method="post" onsubmit="return submitValidation()" class="signin-form">	
						<div  class="form-input">
							<label>Email</label>
							<input type="email" id="email" name="email" placeholder="" onkeyup="emailValidation()" />
							<span id="emailerror" style="visibility:hidden"></span>
						</div>
						<div  class="form-input">
							<label>Password</label>
							<input type="password" name="password" id="password" placeholder="" onkeyup="passwordValidation()"/>
							<span id="passworderror" style="visibility:hidden"></span>
						</div>						
						<button class="btn" style="background:#228B22; color:#ffffff;" name="btn" value="login">Login</button>
						<p style="text-align:center;color:#228B22;margin-left:0px;"><a href="customer-forgotpassword.jsp">Forgot Your Password?</a></p>
					</form>
				</div>					
			</div>
		</div>
	</div>
</section>
<%@include file="footer.jsp" %>
<!-- //form -->
<script>
function submitValidation()
{
	var email=document.getElementById("email").value;
	var password=document.getElementById("password").value; 
	if(password.length == 0 && email.length == 0)
	 {
		//password
		document.getElementById("passworderror").innerHTML="Please Enter Your password.";
		document.getElementById("passworderror").setAttribute("style","visibility: visible;font-size: 16px;color:red;");
		//email
		document.getElementById("emailerror").innerHTML="Please Enter email.";
		document.getElementById("emailerror").setAttribute("style","visibility: visible;font-size: 16px;color:red;");
		return false;
	 }if(password.length == 0 || email.length == 0)
	 {
		 if(password.length == 0){
			 document.getElementById("passworderror").innerHTML="Please Enter your password";
			 document.getElementById("passworderror").setAttribute("style","visibility: visible;font-size: 16px;color:red;");
		 }
		 if(email.length == 0){
			 document.getElementById("emailerror").innerHTML="Please Enter your email";
			 document.getElementById("emailerror").setAttribute("style","visibility: visible;font-size: 16px;color:red;");
		 }
		 return false;
	 }
	//password validation
 	var regEx = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
 	
	var temp=regEx.test(password);
	if(password.length == 0)
	{
		document.getElementById("passworderror").innerHTML="Please Enter Password";
		document.getElementById("passworderror").setAttribute("style","visibility: visible;font-size: 16px;color:red;");
		return false;
	}
	else
	{  
	 	if(temp)
	 	{  	 					
			document.getElementById("passworderror").innerHTML="";
			document.getElementById("passworderror").setAttribute("style","visibility: visible;font-size: 16px;color:green;");  	 	  					 	  	 	  								
	 	}
	 	else
		{  	 	
	 		
			document.getElementById("passworderror").innerHTML="  Password must contain atleast (eg. A,a,@,2) & 8 Character.";
			document.getElementById("nameerror").style.visibility="visible";
			document.getElementById("passworderror").setAttribute("style","visibility: visible;font-size: 16px;color:red;");  	 	  				  	 	  				
			return false;
		}
	}
}
function emailValidation()
{
	document.getElementById("emailerror").innerHTML="";
}
</script>
</body>
</html>