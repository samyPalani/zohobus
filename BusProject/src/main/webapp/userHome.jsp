<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Users Home Page</title>
<link rel="icon" type="image/x-icon" href="img/favicon.ico">
<style>
body {
  background: #FF5733;
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
h2 {
  font-size: 1.3em;
  text-align: center;
  color: #fff;
  font-weight: 100;
  text-transform: capitalize;
  letter-spacing: 4px;
  font-family: 'Roboto', sans-serif;
}
.container {
	padding: 16px;
	background-color: rgbs(5, 5, 2, 0.5);
	width: 50%;
	margin-left: 25%;
	color: white;
}
.cont{
background-color: rgba(0,0,0,0.2);
	border-radius: 4px;
}	

a {
  text-decoration: none;
  display: inline-block;
  padding: 8px 16px;
}

a:hover {
  background-color: #ddd;
  color: black;
}
.next {
  background-color: rgba(0,0,0,0.7);
  color: white;
}
</style>
<jsp:include page="h1.jsp"></jsp:include>
<div class="cont" ><h1>Welcome user</h1></div>




</head>
<body>




<iframe width="560" height="315" src="https://www.youtube.com/embed/NuWS4XGb-G4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<br>
<a href="check_ticket.jsp"  class="next">Book Tickets!!!&raquo;</a>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>