<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>BAKESMART SYSTEM</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="css/addProduct.css"">
<style>.button2 {
  background-color: grey </style>
</head>
<body>
<br><br>
<div class="wrapper">
				<div class="form-container">
				<h2 style="text-align:center;"> Make a Payment</h2> 
				<br></br>
				
				<form action="payment.jsp" method="post">  
			     <div class="input-name">
			     	Menu <br />
			     	 <input type="text" placeholder="Enter Menu" name="CName" autocomplete="off"><br><br>
					</div>
					<div class="input-address">
					Quantity <br />
						<input type="number" placeholder="Enter Quantity" name="orderQuantity" autocomplete="off"><br><br>
					</div>
				
					<div class="input-payment">
				  <label for="paymentmethos">Payment Method</label>
				  <br>
					<select name="payment" id="payment">
					  <option value="cash">Cash</option>
					  <option value="ot">Online Payment</option>
					</select>	
					</div>
					<br>
					<div class="input-payment">
					Total Payment <br />
						<input type="number" placeholder="Total Payment" name="amount" autocomplete="off"><br><br>
					</div>
					
					<button class="button2"href="viewMenu.jsp" name="submit">BACK</button>	
					<button class="button" href="SuccessPayment.jsp" name="submit">SUBMIT</button>
				</form>
				
            </div>
         </div>
l

</body>
</html>

