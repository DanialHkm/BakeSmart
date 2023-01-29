<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Status</title>
<link rel="stylesheet" href="css/product.css">
</head>
<body>
<%@page import="BAKECrud.orderDao,BAKECrud.orderStatus,java.util.*"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%
List<orderStatus> list=orderDao.getAllRecords(); 
request.setAttribute("list",list);
%>

<ul>
  <li><a href="#home">Home</a></li>
  <li><a href="#news">Menu</a></li>
  <li><a href="#contact" class="active">Order</a></li>
   <li><a href="#news">About Us</a></li>

  <li style="float:right"><a href="#about">Log Out <i class="fa fa-sign-out"></i></a></li>
 
</ul>
<h1>Order Status</h1>	
<div class="orderStatus" >  
 <table >
	<thead> 
	<tr>
	<br>
	<th>Order Id</th>
	<th>Staff Id</th>
	<th>Status</th>
	<th>Invoice</th>   
	<tr>
	</thead> 
	
		<tbody>
	    <tr>
	    <c:forEach items="${list}" var="o">  
		<td>${o.getOrderId()}</td>
		<td>${o.getStaffId()}</td>  
		<td>${o.getStatus()}</td>
		<td>
		<a href="viewInvoice.jsp?id=${p.getinvoiceId()}"><button class='edit'>VIEW</button> </a> 
		</td>
		</tr>  
		</tbody>
	</c:forEach>  
</table>  
</div>
<br/> 
<br/> 
<br/> 
<br/> 
<br/> 
<br/> 
<br/> 
<br/> 
<br/> 
<br/> 
<br/> 
<br/> 
<br/> 
<a href="homepagecustomer.jsp"><button class=" button2">BACK</button></a> 
</body>
</html>