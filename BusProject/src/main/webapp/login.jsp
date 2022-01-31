<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link rel="icon" type="image/x-icon" href="img/favicon.ico">
</head>
<body>

<style>
body {
	  background:#FF5733;
	  /* fallback for old browsers */
	  background: -webkit-linear-gradient(to top, #FF5733, #8DC26F);
	  background: -moz-linear-gradient(to top, #FF5733, #8DC26F);
	  background: -o-linear-gradient(to top, #FF5733, #8DC26F);
	  background: linear-gradient(to top, #FF5733, #8DC26F);
	  background-size: cover;
	  background-attachment: fixed; 
	  font-family: 'Roboto', sans-serif;
	}
	h1 {
  font-size: 3em;
  text-align: center;
  color: #fff;
  font-weight: 100;
  text-transform: capitalize;
  letter-spacing: 4px;
  font-family: 'Roboto', sans-serif;
}


    
* {
	box-sizing: border-box;
}

.container {
	padding: 16px;
	background-color: rgbs(5, 5, 2, 0.5);
	width: 50%;
	margin-left: 25%;
	color: white;
}

hr {
	border: 1px solid #f1f1f1;
	marging-bottom: 25px;
}

input[type=text], input[type=email], input[type=date], input[type=password]
	{
	width: 100%;
	padding: 15px;
	margin: 5px 0px 22px 0px;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=email]:focus, input[type=date]:focus,
	input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

.registration {
	background-color: rgba(0,0,0,0.8);
	color: white;
	padding: 16px 30px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
	font-size: 15px;
}

.registration:hover {
	opacity: 0.8;
}

a {
	color: white;
	text-decoration: none;
}

a:hover {
	color: red;
}
.cont{
background-color: rgba(0,0,0,0.2);
	border-radius: 4px;
}
</style>
<body>

	<!-- Navigation Bar -->
	<jsp:include page="headerin.jsp"></jsp:include>

	<!-- Register Form -->
	<form action="./log" method="POST">
		<div class="container">
			<div class="cont" ><h1>Sign In</h1></div>
			<center><b>${alert }</b></center>
			<hr>


			<label for="email"><b>Enter Your Email</b></label> 
			<input type="email" name="email" id="email" placeholder="Enter Your Email" required> 
			
			<label for="pass"><b>Enter Your Password</b></label> 
			<input type="Password" name="pass" id="pass"placeholder="Enter Your Password" required> 
			
			<a href="register.jsp"><b>Create new Account?</b></a>

			<button type="submit" class="registration"> <b> Login</b> </button>



		</div>


	</form>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>