<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="CMC.*" import="java.util.*"%>
<%@include file="/../General/Security-action.jsp"%>
<%@include file="/../General/Security-action.jsp"%>
<%
	DBController dbHome = new DBController();
	UserInteractions ui = (UserInteractions) session.getAttribute("function");
	User user = ui.getUser();
	ArrayList<School> saved = user.getSaved();
	School removedSchool = dbHome.getSchool(request.getParameter("School"));
	ui.removeSchool(removedSchool.getName());
	response.sendRedirect("ViewSavedSchools.jsp");
%>