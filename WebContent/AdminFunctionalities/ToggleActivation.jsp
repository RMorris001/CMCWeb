<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="CMC.*" import="java.util.*"%>
 <%
 	//String toggleCommand = request.getParameter("Status");
 	AdminInteractions ai = (AdminInteractions)session.getAttribute("function");
 	String username = request.getParameter("Username");
 	User user = ai.getUser(username);
	
 	ai.deactivateAccount(user);
 	response.sendRedirect("ViewAccounts.jsp");
 	
 		
 
 
 %>

