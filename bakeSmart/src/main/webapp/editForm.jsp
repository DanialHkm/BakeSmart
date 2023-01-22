<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.button2 {background-color: #08B43F;}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/addProduct.css">
</head>
<body>
<%@page import="BAKECrud.productDao,BAKECrud.product"%>  
  
<%  
String id=request.getParameter("id");  
product p=productDao.getRecordById(Integer.parseInt(id));  
%>  
  
<div class="wrapper">
				<div class="form-container">
				<h2 style="text-align:center;"> EDIT PRODUCT</h2> 
				<br></br> 
				<form action="editProduct.jsp" method="post">  
				<input type="hidden" name="id" value="<%=p.getId() %>"/>  
				     <div class="input-name">
				     	 Name: 
						<input type="text" name="name" value="<%= p.getName()%>"/>  
						</div><br>
						
				    <div class="input-quantity">
						Quantity: 
						<input type="text" name="quantity" value="<%= p.getQuantity()%>"/>  				    
					</div><br>
					
					<div class="input-description">
						Description:
						<input type="text" name="description" value="<%= p.getDescription()%>"/>
					</div><br>
					
					<button class="button" name="submit">EDIT </button>
				</form>
				
            </div>
         </div>

		<a href="viewProduct.jsp"><button class=" button2">BACK</button></a> 
		 
</body>
</html>