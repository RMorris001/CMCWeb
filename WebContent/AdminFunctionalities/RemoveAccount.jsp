<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="CMC.*" import="java.util.*"%>
<%@include file="/../General/AccountTemplate.jsp"%>
<%@include file="/../General/Security-action.jsp"%>
<%@ page errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Delete Account</title>
</head>
<body>
	<%
		AdminInteractions ai = (AdminInteractions) session.getAttribute("function");
		ai.deleteAccount(ai.getAccount(request.getParameter("Account")));
		response.sendRedirect("AdminMenu.jsp");
	%>
</body>
</html>