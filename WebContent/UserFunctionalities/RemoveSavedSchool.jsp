<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="CMC.*" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	DBController dbHome = new DBController();
	UserFunctionalityController ucHome = new UserFunctionalityController();
	School removedSchool = dbHome.getSchool(request.getParameter("School"));
	ucHome.removeSchool(removedSchool.getName());
	response.sendRedirect("ViewSavedSchools.jsp");
    
%>