<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Staff</title>
<link rel="stylesheet" href="css/AddStaff.css">
</head>
<body>
	<form action="addStaffFunction.jsp" method="post" id="wizard">
	<section>
		<div class="wrapper">
				<div class="form-container">
				<h2 style="text-align:center;"> Add New Staff </h2> 
				     <div class="input-username">
						<input type="text" placeholder="Enter Username" name="SUsername"  autocomplete="off"><br><br>
				    </div>
				    <div class="input-position">
						<input type="text" placeholder="Enter Position" name="SPosition" autocomplete="off"><br><br>
				    </div>
					<div class="input-password">
						
						<input type="text" placeholder="Enter Password" name="SPassword" autocomplete="off"><br><br>
					</div>
            </div>
            <button class="button" value="Submit" name="submit">SUBMIT</button>	
         </div>
	</section>
	</form>

</body>
</html>