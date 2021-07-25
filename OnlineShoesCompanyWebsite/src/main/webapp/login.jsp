<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewpoint" content="width=device-width, initial-scale=1.0">
<title>Sing Up</title>
<link rel="stylesheet" href="Login.css">
</head>
<body>
<section>
<div class="imgBx">
<img src="img/shopbg.jpg">
</div>
<div class="contentBx">
<div class="formBx">
<h2>Login</h2>
<form action="LoginAction.jsp" method="post">
<div class="inputBx">
<span>Email</span>
<input type="text" name="email">
</div>
<div class="inputBx">
<span>Password</span>
<input type="password" name="password">
</div>
<div class="remember">
<label><input type="checkbox" name="">  Remember Me</label>
</div>
<div class="inputBx">
<input type="submit" value="Sing In">
</div>
<div class="inputBx">
<p>Don't have an account ?<a href ="signup.jsp">Sing Up</a></p>
</div>
</form>

<div class='whysignLogin'>
			<%
				String msg = request.getParameter("msg");
			if ("notexist".equals(msg)) {
			%>
			<h1>Incorrect Username or Password</h1>
			<%
				}
			%>
			<%
				if ("invalid".equals(msg)) {
			%>
			<h1>Some thing Went Wrong! Try Again !</h1>
			<%
				}
			%>
<h3>Login With Social media</h3>
<ul class="sci">
<li><img src="img/face.jpg"></li>
<li><img src="img/insta.jpg"></li>
<li><img src="img/twi.png"></li>
<li><img src="img/google.jpg"></li>
</ul>
</div>
</div>
</section>

</body>
</html>