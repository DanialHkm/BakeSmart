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
  <li><a href="#home"  class="active">Home</a></li>
  <li><a href="#news">Menu</a></li>
  <li><a href="#contact">Order</a></li>
   <li><a href="#news">About Us</a></li>

  <li style="float:right"><a href="#about">Log Out <i class="fa fa-sign-out"></i></a></li>
 
</ul>
	
   <form action="SearchController" method="get" id="wizard">
        		<!-- SECTION 1 -->
                <h2></h2>
                <section>
                    <div class="inner">
						<div>
							<img src="images/huge.jpg" alt="" width="1000" height="1000">
						</div>
						<div class="form-content" >
							<div class="form-header">
							</div>
							<h5>Welcome to Bakesmart</h5>
							<p><a href="OrderController?action=list" class="button">Order Now</a></p>					
						</div>
					</div>
                </section>
 			</form>
</body>
</html>

