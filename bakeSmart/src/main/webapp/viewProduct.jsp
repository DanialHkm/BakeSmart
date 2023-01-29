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
	<div class="header">
        <div class="header-right">
            <a href="">Staff</a>
            <a href="">Product</a>
             <a href="">Order</a>
            <a class="logout" href="">Logout</a>
        </div>
    </div>
    <br>
    <a href="addProductForm.jsp"><button class='ADDNEW'>ADD NEW PRODUCT</button></a>
     
<%  
List<product> list=productDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
<div class="" >  
<h1>Product Dashboard</h1>
<br>
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