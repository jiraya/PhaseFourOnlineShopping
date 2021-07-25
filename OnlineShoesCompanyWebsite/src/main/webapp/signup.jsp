<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="SingupAction.jsp" method="post">
  <input type="text" name="name" placeholder="Enter Name" required>
  <input type="email" name="email" placeholder="Enter Email" required>
  <input type="number" name="mobileNumber" placeholder="Enter Number" required>
  <select name="securityQuestion" required>
  <option value="What was your First Car?">What was your First Car?</option>
  <option value="What is Your Nick Name?">What is Your Nick Name?</option>
  <option value="What is the name of your first pet?">What is the name of your first pet?</option>
  <option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
  </select>
 <input type="text" name="answer" placeholder="Enter Answer" required>
  <input type="password" name="password" placeholder="Enter password" required>
  <input type="submit" value="SingUp">
  </form>
    
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
<%
String msg=request.getParameter("msg");
if ("valid".equals(msg))
{
%>
	<h1>Successfully Registered</h1>
<%	
}
%>
<%
if("invalid".equals(msg))
{
	%>
	<h1>Some thing Went Wrong! Try Again !</h1>	
<%} %>



    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>