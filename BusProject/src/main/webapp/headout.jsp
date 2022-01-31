<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<style type="text/css">
body {
	margin-top: 0px;
}

.navbar {
	background-color: rgba(0,0,0,0.7);
	border-radius: 4px;
}

.navbar ul {
	overflow: auto;
}
.navbar-right{
float:right;
}

.navbar li {
	float: left;
	list-style: none;
	margin: 13px;
}

.navbar li a {
	padding: 3px 3px;
	text-decoration: none;
	color: white;
}

.navbar li a:hover {
	background-color: red;
	padding: 10px;
}
</style>
</head>
<body>
	<header>
		<nav class="navbar">
			<ul>
				<li><a href="index.jsp"><b>Home</b></a></li>
				<li><a href="about.jsp"><b>About</b></a></li>
				
				<li><a href="contactus.jsp"><b>Contact Us</b></a></li>
				<nav class="navbar-right">
				
				
				<li><a href="login.jsp"><b>Logout</b></a></li>
				
				
			</ul>
		</nav>
		   
			
			
	</header>
</body>
</html>