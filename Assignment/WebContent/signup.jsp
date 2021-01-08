<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
	<div id='container'>
		<div class='signup'>
			<form action="SignUpAction.jsp" method="post">
				<input type="text" name="name" placeholder="Enter the name">
				<input type="email" name="email" placeholder="Enter the Email">
				<input type="number" name="mobileNumber"
					placeholder="Enter the MobileNumber"> <input
					type="password" name="password" placeholder="Enter the password">
				<input type="submit" value="Signup">
			</form>
			<h2>
				<a href="login.jsp">Login</a>
			</h2>
		</div>
		<div class='whysign'>
			<%
				String msg = request.getParameter("msg");
				if ("valid".equals(msg)) {
			%>
			<h1>Successfully Registered!!!</h1>
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
			<h2>Online Shopping</h2>

		</div>
	</div>

</body>
</html>