<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="ForgotPasswordAction.jsp" method="post">
     <input type="email" name="email" placeholder="Enter Email" required >
    <input type="number" name="mobileNumber" placeholder="Enter Number" required>
    <select name="securityQuestion" >
  <option value="What was your First Car?">What was your First Car?</option>
  <option value="What is Your Nick Name?">What is Your Nick Name?</option>
  <option value="What is the name of your first pet?">What is the name of your first pet?</option>
  <option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
  </select>
 <input type="text" name=" answer" placeholder="Enter Answer" required>
  <input type="password" name="newPassword" placeholder="Enter your new password to set" required>
  <input type="submit" value="Save"> 
     
     </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
<%
				String msg = request.getParameter("msg");
			if ("done".equals(msg)) {
			%>
			<h1>Password changed Successfully !</h1>
			<%
				}
			%>
			<%
				if ("invalid".equals(msg)) {
			%>
			<h1>Invalid Username or password! Try Again !</h1>
			<%
				}
				%>
    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>
</body>
</html>