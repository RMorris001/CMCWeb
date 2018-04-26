<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="CMC.*" import="java.util.*"
	import="java.awt.Color"%>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
	box-sizing: border-box;
}

body {
	font-family: Arial;
	background-color: black
}

.header {
	overflow: hidden;
	background-color: #00ff00;
	padding: 10px 5px;
}

.header a {
	float: left;
	color: black;
	text-align: center;
	padding: 12px;
	text-decoration: none;
	font-size: 18px;
	line-height: 25px;
	border-radius: 4px;
}

.header a.logo {
	font-size: 25px;
	font-weight: bold;
}

.header a:hover {
	background-color: #ddd;
	color: black;
}

.header-right {
	float: right;
	margin: 1%;
}
</style>
</head>
<body>

	<div class="header">
		<a class="logo"
			href=<%if (session.getAttribute("function").getClass().toString().equals("class CMC.UserInteractions")) {
				out.println("../UserFunctionalities/UserMenu.jsp");
			}
		else if(session.getAttribute("function").getClass().toString().equals("class CMC.AdminInteractions")) {
			out.println("../AdminFunctionalities/AdminMenu.jsp");
		}%>> <img
			src="../General/CmcLogo.png" alt="CmcLogo" height="70" width="70">
		</a>
		<div class="header-right">
			<a href="../General/logout.jsp"><%session.getAttribute("function"). %></a>
		</div>
		<div class="header-right">
			<a href="../General/logout.jsp">Log Out</a>
		</div>
	</div>
	<br>
	<br>

</body>
</html>