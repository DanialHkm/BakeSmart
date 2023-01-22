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
        <h1>CUSTOMER LOGIN</h1>
        <form action="custLoginServlet" method="post">
            <div class="txt_field">
                <input type="text" placeholder="Username" name="CUsername" required>
            </div>
            <div class="txt_field">
                <input type="password" placeholder="Password" name="CPassword" required>
            </div>
            <div class="signup_link">
                Don't have account ? <a href="registration.jsp">Signup</a>
                <br>
                <input type="submit" value="Login">
                <br>
                <a href="staffLogin.jsp">Login as staff</a>
            </div>
            
             <c:if test="${errorMessage != null}">
                <div class="error-message">
                    <c:out value="${errorMessage}"/>
                </div>
            </c:if>
        </form>
    </div>
</body>
</html>