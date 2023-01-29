<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff Dashboard</title>
<link rel="stylesheet" href="css/listStaff.css">
</head>
<body>
<%@page import="BAKECrud.staffDAO,BAKECrud.staff,java.util.*"%>
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
    <div class="AddStaffBtn">
    	<a href="addStaffForm.jsp"> <button class='AddStaff'>ADD STAFF</button> </a>
	</div>
	<%
	List<staff> list=staffDAO.getAllStaff(); 
	request.setAttribute("list",list);
	%>
<div class="staff" >
	<h1>Staff Dashboard</h1>	
	
	  <table >
	    <thead>
	      <tr>
	      	<th>Id</th>
	        <th>Username</th>
	        <th>Position</th>
	        <th>Password</th>
	        <th>Actions</th>
	      </tr>
	    </thead>
	    <tbody>
	      <tr>
	      <c:forEach items="${list}" var="s"> 
	        <td>${s.getSId()}</td>
	        <td>${s.getSUsername()}</td>
	        <td>${s.getSPassword()}</td>
	        <td>${s.getSPosition()}</td>
	        <td>
			<a href="updateStaffForm.jsp?SId=${s.getSId()}"><button class='view'>UPDATE</button> </a>
			<a href="deleteStaff.jsp?SId=${s.getSId()}"><button class='delete'>DELETE</button> </a>
	        </td>
	      </tr>
	    </tbody>
	    </c:forEach>
	  </table>
</div>

</body>
</html>