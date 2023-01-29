<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff Dashboard</title>
<link rel="stylesheet" href="css/listStaff.css">
</head>
<style>
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

.button3 {background-color: #f44336;} /* Red */ 
</style>
<body>
<%@page import="BAKECrud.staffDAO,BAKECrud.staff,java.util.*"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<div class="header">
        <div class="header-right">
            <a href="">Staff</a>
            <a href="">Product</a>
            <a href="">Order</a>
            <a class="logout" href="staffLogin.jsp">Logout</a>
        </div>
    </div>
    <br>
   
<div class="staff" >
	<h1>Order Dashboard</h1>	
	
	  <table >
	    <thead>
	      <tr>
	      	<th>Order Id</th>
	        <th>Invoice</th>
	        <th>Received</th>
	      </tr>
	    </thead>
	    <tbody>
	      <tr>
		    <td>1</td>
		    <td><a href="invoicedetail.jsp"><button class='button'>View</button> </a>
		    <td><a href="successconfirm.jsp"><button class='button button'>Order Confirmed</button> 
		     </td>
	        </tr>
	     <tr>
		    <td>2</td>
		     <td><a href="invoicedetail.jsp"><button class='button'>View</button> </a>
		     
		    <td><a href="successconfirm.jsp"><button class='button button'>Yes</button> 
		    <a href="rejectorder.jsp"><button class='button button3'>No</button> </td>
	        </tr>
	     
	   
	  </table>
</div>

</body>
