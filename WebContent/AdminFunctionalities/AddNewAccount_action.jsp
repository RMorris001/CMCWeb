<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="CMC.*" import="java.util.*"%>
<%@include file="/../General/AccountTemplate.jsp"%>
<%@include file="/../General/Security-action.jsp"%>
<%@ page errorPage="error.jsp" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New Account</title>
</head>
<body>
	<%
		DBController dbHome = new DBController();
		AdminInteractions ai = new AdminInteractions(dbHome.getAdmin("nadmin"));
		Account newAccount = ai.newAccount(request.getParameter("Username"), request.getParameter("Password"),
				request.getParameter("FirstName"), request.getParameter("LastName"),
				request.getParameter("Type").charAt(0), request.getParameter("Status").charAt(0));

		ai.addNewAccount(newAccount);
		response.sendRedirect("ViewAccounts.jsp");
	%>
</body>
</html>