<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin_Home</title>
<link rel="icon" type="image/x-icon" href="img/favicon.ico">
</head>
<body>
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
<h1>Welcome admin</h1>
<jsp:include page="h1.jsp"></jsp:include>
<a href="show_ticket.jsp"  class="next">Show Tickets!!!&raquo;</a>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>