
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body style="background-color: #0080FF">
	<h1 align="center">Welcome to Digi App Foundry!!!</h1>
	<div id='container'>
		<div class='signup'>
			<form action="loginAction.jsp" method="post">
				<input type="email" name="email" placeholder="Enter the Email"
					required> <input type="password" name="password"
					placeholder="Enter the password" required> <input
					type="submit" value="Login">


			</form>
			<h2>
				<a href="signup.jsp">SignUp</a>
			</h2>
			<h2>
				<a href="forgotPassword.jsp">Forgot Password?</a>
			</h2>
		</div>
		<div class='whysignLogin'>
			<%
				String msg = request.getParameter("msg");
				if ("notexist".equals(msg)) {
			%>
			<h1>Incorrect Username or Password!!!</h1>
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
			<h1>Online Shopping System</h1>

		</div>
	</div>

</body>
</html>