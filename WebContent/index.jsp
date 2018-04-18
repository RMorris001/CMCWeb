<html>
<head>

<title>Login Form</title>
</head>
<body>
	<br> <center>Sign In</center>
	<%
	//For now this does not tell you if you have an incorrect username or password
		if ((request.getParameter("Error")) != null && request.getParameter("Error").equals("nonAccount")) {
			out.print("Incorrect Username or Password");
		}
		else if ((request.getParameter("Error")) != null && request.getParameter("Error").equals("type")) {
			out.print("Database Error");
		} else if((request.getParameter("Error")) != null && request.getParameter("Error").equals("-4")){
			out.println("You must be logged in");
		}
		
	%>
	<form method="post" action="Login_action.jsp" name="Login">
		<br>
		<table align="center" style="text-align: left; width: 266px; height: 228px;"
			border="1" cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td style="vertical-align: top;">Username<br>
					</td>
					<td style="vertical-align: top;"><input name="Username">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Password<br>
					</td>
					<td style="vertical-align: top;"><input name="Password">
					</td>
				</tr>

				<td style="vertical-align: top;"><input value="Log in"
					name="Log in" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td style="vertical-align: top;"><input value="Reset"
					name="Reset" type="reset"></td>
				</tr>
			</tbody>
		</table>
		<br>
	</form>
	<br>
</body>
</html>