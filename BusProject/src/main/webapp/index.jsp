<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Zoho_Buses_Homepage</title>
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
  img { 
                width: 100%;
                height: auto;
                
              
            }
.container{
background-color: rgba(0,0,0,0.5);
	border-radius: 4px;
}

          
            .button {
                background-color: red; /* Green */
                border: none;
                color: white;
                padding: 16px 32px;
                text-align: ;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: -624px 2px;
                -webkit-transition-duration: 0.4s; /* Safari */
                transition-duration: 0.4s;
                cursor: pointer;
                position:relative;
                top: -798px;
                left: 575px;
            }
            .button1:hover {
                background-color: red;
                color: white;

            }
            .button2:hover {
                background-color: red;
                color: white;
            }
            
        </style>
    </head>
    <body>
		<jsp:include page="headerin.jsp"></jsp:include>
        <div class="container" >
			 
            <div class="center"><h1>Zoho Buses!!!</h1>
                <h2>There ain't no rust on the happiness bus</h2>
            
        </div>
        
        <marquee width="100%" direction="left" height="50%">
    Life Is Like A Bus Ride, Milestones An Memories Are The Bus Stops. People Will Get On And Off The Bus <span>&#128525;&#128525;&#128525;</span>
   
</p>
</marquee>
        
        <img src="img/tr.jpg" alt="Cinque Terre" width="100%" height=auto>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>