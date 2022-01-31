<%@ page import="java.util.*" %>
 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
    <link rel="icon" type="image/x-icon" href="img/favicon.ico">
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

.p1 {
  font-family: "Lucida Console", "Courier New", monospace;
}
.cont{
background-color: rgba(0,0,0,0.2);
	border-radius: 4px;
}	
</style>
    
    </head>
    <body>
    <jsp:include page="h1.jsp"></jsp:include>
    
    
     <div class="cont" ><h1>Let's Travel The World</h1></div>
     <table border="1" align='center'>
               

     
            
            </tr>
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
                int count = 0;
                String color = "#F9EBB3";
                if (request.getAttribute("piList") != null) {
                    ArrayList al = (ArrayList) request.getAttribute("piList");
                    System.out.println(al);
                    Iterator itr = al.iterator();
                    while (itr.hasNext()) {

                        if ((count % 2) == 0) {
                            color = "#eeffee";
                        }
                        count++;
                        ArrayList pList = (ArrayList) itr.next();
            %>
            <tr style="background-color:<%=color%>;">
                <td><%=pList.get(0)%></td>
                <td><%=pList.get(1)%></td>
                <td><%=pList.get(2)%></td>
                <td><%=pList.get(3)%></td>
                  <td><%=pList.get(4)%></td>
                    <td><%=pList.get(5)%></td>
                      <td><%=pList.get(6)%></td>
                        <td><%=pList.get(7)%></td>
                          <td><%=pList.get(8)%></td>
                         
            </tr>
            <%
                    }
                }
                if (count == 0) {
            %>
            <tr>
                <td colspan=9 align="center"><b>No Record Found..</b></td>
            </tr>
            <%            }
            %>
        </table>
        <br>
        <br>
        
        <div>
  <i><p class="p1">"Life is like a bus ride turn in life are stations<br>
  Some board & some deboard just to reach the station but few board out hearts and reserve their seat eternally."</i></p>
  <p><p class="p1"> - Rafeek Alas</p>
</div>


        <jsp:include page="footer.jsp"></jsp:include>
        
    </body>
</html>
