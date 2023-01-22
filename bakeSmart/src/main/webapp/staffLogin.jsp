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
        <h1>STAFF LOGIN</h1>
        <form action="staffLoginServlet" method="post"> 
            <div class="txt_field">
                <input type="text" placeholder="Username" name="SUsername" required>
            </div>
            <div class="txt_field">
                <input type="password" placeholder="Password" name="SPassword" required>
            </div>
            <input type="submit" value="Login">
            <div class="signup_link">
                <a href="custLogin.jsp">Login as customer</a>
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