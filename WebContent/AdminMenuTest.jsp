<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="CMC.*"
	import="UserFunctionalities.*" import="AdminFunctionalities.*"
	import="WebContent.*"%>

<%	DBController dbHome = new DBController();
	Account account = new Account("TESTAdmin", "TESTPass", "First", "Last", 'a', 'Y');
	LogOn.setCurrentAccount(account);
	session.setAttribute("Account", account);
	response.sendRedirect("/CMCWeb/AdminFunctionalities/AdminMenu.jsp");%>