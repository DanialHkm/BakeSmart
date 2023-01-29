<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Update Staff</title>
<link rel="stylesheet" href="css/AddStaff.css">
</head>
<body>
<%@page import="BAKECrud.staffDAO,BAKECrud.staff"%>  
  
<%  
String SId=request.getParameter("SId");  
staff s=staffDAO.getRecordById(Integer.parseInt(SId));  
%> 
	<form action="updateStaffFunction.jsp" method="post">
	<div class="wrapper">
		<div class="form-container">
		<h2 style="text-align:center;"> Update Staff </h2>
			<input type="hidden" name="SId" value="<%=s.getSId() %>"/>
			<div class="input-username">
				
					<input type="text" name="SUsername" value="<%=s.getSUsername() %>"/><br><br>
				</div>
				<div class="input-password">
				
					<input type="text" name="SPassword" value="<%=s.getSPassword() %>"/><br><br>
				</div>
				<div class="input-position">
				
					<input type="text" name="SPosition" value="<%=s.getSPosition() %>"/><br><br>
				</div>
					<button class="button" value="Submit" name="submit">SUBMIT</button>	
			</div>
		</div>
	</form>
	<a href="listStaff.jsp"><button class="button">BACK</button></a> 

</body>
</html>