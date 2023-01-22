<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/product.css">
</head>
<body>
<%@page import="BAKECrud.productDao,BAKECrud.product,java.util.*"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>  
  <h1>Product Dashboard</h1>
   
  
<%  
List<product> list=productDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
<div class="productTable" >  
<a href="addProductForm.jsp"><button class='view'>ADD NEW PRODUCT</button></a> 
 <table >
	<thead> 
	<tr>
	<br>
	<th>Id</th>
	<th>Product Name</th>
	<th>Product Quantity</th>
	<th>Product Description</th>
	<th>Actions</th>   
	<tr>
	</thead> 
	
		<tbody>
	    <tr>
	    <c:forEach items="${list}" var="p">  
		<td>${p.getId()}</td>
		<td>${p.getName()}</td>
		<td>${p.getQuantity()}</td>  
		<td>${p.getDescription()}</td>
		
		<td>
		<a href="editForm.jsp?id=${p.getId()}"><button class='edit'>EDIT</button> </a> 
		<a href="deleteProduct.jsp?id=${p.getId()}"><button class='delete'>DELETE</button></a>
		</td></tr>  
		</tbody>
	</c:forEach>  
</table>  
</div>
<br/> 
  
</body>
</html>