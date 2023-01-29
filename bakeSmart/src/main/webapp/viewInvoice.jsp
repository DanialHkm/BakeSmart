<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Invoice</title>
<link rel="stylesheet" href="css/product.css">
</head>
<body>
<%@page import="BAKECrud.invoiceDao,BAKECrud.invoice,java.util.*"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> 
  
<%
List<invoice> list=invoiceDao.getAllRecords(); 
request.setAttribute("list",list);
%>
<div class="view invoice" >  
 <table >
	<thead> 
	<tr>
	<br>
	<th>Invoice Id</th>
	<th>Order Id</th>
	<th>Method</th>
	<th>Amount</th>   
	<tr>
	</thead> 
	
		<tbody>
	    <tr>
	    <c:forEach items="${list}" var="i"> 
	    <td>${i.getInvoiceId()}</td>
		<td>${i.getOrderId()}</td>
		<td>${i.getMethod()}</td>  
		<td>${i.getAmount()}</td>
		</tr>  
		</tbody>
	</c:forEach>  
</table>  
</div>
<br/>
		<a href="orderStatus.jsp"><button class=" button2">BACK</button></a> 
</body>
</html>