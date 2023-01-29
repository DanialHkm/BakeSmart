<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>BAKESMART SYSTEM</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="css/custHomepage.css">
</head>
<body>

<ul>
  <li><a href="#home"  >Home</a></li>
  <li><a href="#news">Menu</a></li>
  <li><a href="#contact">Order</a></li>
   <li><a href="#news">About Us</a></li>
	
  	
  <li style="float:right"><a href="registration.jsp">Log Out <i class="fa fa-sign-out"></i></a></li>
   <li style="float:right"><a href="updateCust.jsp">Profile<i class="fas fa-user-edit"></i></a></li>
 
</ul>
	
   <form action="SearchController" method="get" id="wizard">
        		<!-- SECTION 1 -->
                <h2></h2>
                <section>
                    
						<div class="form-content" >
							<div class="form-header">
							</div>
							<h5>Successful Place Order From BakeSmart</h5>
							<h1>Please make a payment when received order , Thank You</h1>
							<p><a href="homepagecustomer.jsp" class="button">Home</a></p>					
						</div>
			
                </section>
 			</form>
</body>
</html>

