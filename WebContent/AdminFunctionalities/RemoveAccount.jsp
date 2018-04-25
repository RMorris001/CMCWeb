<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8" import="CMC.*" import="java.util.*"%>
<%@include file="/../General/AccountTemplate.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Delete Account </title>
</head>
<body>
	<%	DBController dbHome = new DBController();
		//AdminInteractions ai = (AdminInteractions)session.getAttribute("function"); #4CAF50 #F4F6F7
		AdminInteractions ai = new AdminInteractions(dbHome.getAdmin("nadmin"));
		ai.deleteAccount(dbHome.getAccount(request.getParameter("Account")));
		response.sendRedirect("ViewAccounts.jsp");
		%>
</body>
</html>