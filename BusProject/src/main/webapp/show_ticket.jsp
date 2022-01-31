<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "elab";
String userid = "root";
String password = "Palani@2001";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
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
th,td{
  padding: 6px;
  text-align: left;
  border-bottom: 1px solid #000000;
}
td:hover {background-color: #D6EEEE;}


</style>
  <jsp:include page="h1.jsp"></jsp:include>   

<h1>Bus Details</h1>

<table border="1" align='center'>
<tr style="background-color: rgba(0,0,0,0.2);">
                <th>Bus Id</th>
                <th>Bus Type</th>
                <th>Departure Time</th>
                <th>Boarding Point</th>
                <th>Dropping Point</th>
                <th>Duration</th>
                <th>Seats Available</th>
                <th>Fare</th>
                <th>Arrival Time</th>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from bus_details";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("Bus_Id") %></td>
<td><%=resultSet.getString("Bus_Type") %></td>
<td><%=resultSet.getString("Departure_Time") %></td>
<td><%=resultSet.getString("Boarding_Point") %></td>
<td><%=resultSet.getString("Dropping_Point") %></td>
<td><%=resultSet.getString("Duration") %></td>
<td><%=resultSet.getString("Seats_Available") %></td>
<td><%=resultSet.getString("Fare") %></td>
<td><%=resultSet.getString("Arrival_Time") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
