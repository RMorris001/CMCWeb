<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="CMC.*"
	import="UserFunctionalities.*" import="AdminFunctionalities.*"
	import="WebContent.*"%>

<%	DBController dbHome = new DBController();
	LogOn logOnObject = new LogOn();
	User account = (User)logOnObject.run("juser", "user");
	account.saveSchool(dbHome.getSchool("YALE"));
	session.setAttribute("LogOn", logOnObject);
	response.sendRedirect("/CMCWeb/UserFunctionalities/UserMenu.jsp");%>