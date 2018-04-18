<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="CMC.*"
	import="UserFunctionalities.*" import="AdminFunctionalities.*"
	import="WebContent.*"%>

<%	DBController dbHome = new DBController();
	ArrayList<School> savedSchools = new ArrayList<School>();
	savedSchools.add(dbHome.getSchool("YALE"));
	savedSchools.add(dbHome.getSchool("BROWN"));
	savedSchools.add(dbHome.getSchool("HARVARD"));
	Account account = new User("TESTUser", "TESTPass", "First", "Last", 'u', 'Y', savedSchools);
	LogOn.setCurrentAccount(account);
	session.setAttribute("Account", account);
	response.sendRedirect("/CMCWeb/UserFunctionalities/UserMenu.jsp");%>