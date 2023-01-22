<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>BAKESMART SYSTEM</title>
<link rel="stylesheet" href="css/Login.css">
</head>
<body>
    <div class="center">
        <h1>CUSTOMER SIGNUP</h1>
        <form action="registrationServlet" method="post">
            <div class="txt_field">
                <input type="text" placeholder="Name" name="CName" required>
            </div>
            <div class="txt_field">
                <input type="password" placeholder="Phone" name="CPhone" required>
            </div>
            <div class="txt_field">
                <input type="text" placeholder="Address" name="CAddress" required>
            </div>
             <div class="txt_field">
                <input type="text" placeholder="Username" name="CUsername" required>
            </div>
            <div class="txt_field">
                <input type="password" placeholder="Password" name="CPassword" required>
            </div>
            <div class="signup_link">
               
                <input type="submit" value="Login">
                <br>
                <a href="staffLogin.jsp">Login as staff</a>
            </div>
            
        </form>
    </div>
</body>
</html>