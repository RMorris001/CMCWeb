<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="CMC.*" import="java.util.*"%>
<%@include file="./GeneralTemplate.jsp"%>
<%
	//For now this does not tell you if you have an incorrect username or password
	if ((request.getParameter("param")) != null && request.getParameter("param").equals("nonAccount")) {
		out.print("<h1 align = center><font color = red>Incorrect Userame or Password</h1></font>");
	} else if ((request.getParameter("param")) != null && request.getParameter("param").equals("typeError")) {
		out.print("<h1 align = center><font color = red>Database Error</h1></font>");
	} else if ((request.getParameter("param")) != null
			&& request.getParameter("param").equals("securityError")) {
		out.print("<h1 align = center><font color = red>You Must Be Logged In</h1></font>");
	} else if ((request.getParameter("param")) != null && request.getParameter("param").equals("out")) {
		out.print("<h1 align = center><font color = white>Logout Successful</h1></font>");
	}
%>
<html>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

form {
	
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

.cancelbtn {
	width: 25%;
	padding: 10px 18px;
	background-color: #f44336;
}

.center {
	border: 3px solid #73AD21;
	padding: 10px;
}

.container {
	padding: 16px;
	margin: auto;
	width: 40%;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 200%;
	}
}
</style>
<body>
	<br>
	<form action="Login_action.jsp">
		<div class="container" style="background-color: #F4F6F7">
			<label for="uname"><b>Username</b></label> <input type="text"
				placeholder="Enter Username" name="Username" required> <label
				for="psw"><b>Password</b></label> <input type="password"
				placeholder="Enter Password" name="Password" required>

			<button type="submit">Login</button>
			<label> <input type="checkbox" checked="checked"
				name="remember"> Remember me
			</label>
		</div>
		<div class="container" style="background-color: #f1f1f1">
			<span class="psw">Forgot <a href="#">password?</a></span> <br>
		</div>
	</form>
</body>
</html>

