<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="CMC.*" import="java.util.*"
	import="java.awt.Color"%>

<html>
<style> 
#rcorners1 {
    border-radius: 25px;
    background: #00f73a;
    padding: 20px; 
    height: 50px; 
}
body {
    background-color: rgb(60,60,60);
}
</style>

</head>
<body>

<p id="rcorners1">
    <img src="./CmcLogo.png" alt="CmcLogo" height="70" width="70">
   
</p>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	
	position: fixed;
	right: 25px;
	top: 30px;
	
	
}

button:hover {
	opacity: 0.8;
}


.container {
	padding: 16px;
	margin: auto;
	width: 40%;
}


</style>
<body>
	<br>
	<form action="/CMCWeb/General/logout.jsp">
		<div class="container">
			<button type="submit">logout</button>
		</div>
	</form>
</body>
