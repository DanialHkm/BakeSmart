<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/listStaff.css">
<style>
h1 {text-align: center;}
h{text-align: center;}
p {text-align: center;}
div {text-align: center;  text-justify: inter-word;
}
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
</style>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Invoice detail</title>
</head>
<body>
<h1>BakeSmart Invoice</h1>
<br>
<div class="w3-container w3-blue">
<h2>Customer Details</h2>
</div>
<div>
<ul>
  <h3>Customer Name : Anis Ilyana</h3>
  <h3>Phone Number : 1990814212</h3>
  <h3>Address : Taman Jasin Kisar</h3>
</ul>  
</div>
<div class="w3-container w3-blue">
<h2>Order Details</h2>
</div><div>
<ul>
  <h3>Order ID : 1 </h3>
   <h3>Order Menu : Batik Cake</h3>
  <h3>Order Quantity : 1</h3>
  <h3>Date : 2023-01-29</h3>
  <h3>Payment Method : Cash</h3>
  <h3>Total Payment : 55</h3>
</ul> 
</div><p>
<a href="OrderConfirmation.jsp"><button class='button button'>Back</button></a></p> 
</body>
</html>