<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="CMC.*" import="java.util.*"%>
	<%@include file="verifyLogin.jsp"%>
	
<%
	DBController dbHome = new DBController();
	UserFunctionalityController ucHome = new UserFunctionalityController();
	School removedSchool = dbHome.getSchool(request.getParameter("School"));
	ucHome.removeSchool(removedSchool.getName());
	response.sendRedirect("ViewSavedSchools.jsp");
    
%>