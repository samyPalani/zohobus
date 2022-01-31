<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Check_Tickets</title>
<link rel="icon" type="image/x-icon" href="img/favicon.ico">
</head>
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
            


input[type=text]
	{
	width: 100%;
	padding: 15px;
	margin: 5px 0px 22px 0px;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:
	 {
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
<jsp:include page="h1.jsp"></jsp:include>
<div class="cont" ><h1>Available Buses!!!</h1></div>
<div class="container">
<form method="post" action="./BusSearch">
			<hr>
            <label for="From"><b>Enter Your Place</b></label> 
			<input type="text" name="Boarding_Point" id="Boarding_Point" placeholder="Enter Your Starting Place" required>

			<label for="To"><b>Enter Your Destination</b></label> 
			<input type="text" name="Dropping_Point" id="Dropping_Point" placeholder="Enter Your Destination Place"required> 
			
			<label for="Seat"><b>Type</b></label> 
			<input type="text" name="Bus_Type" id="Bus_Type" placeholder="Seater-SR/Slepper-SR"required> 
			
			

			<button type="submit" class="registration">
				<b> Search!</b>
			</button>
			</div>

</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>