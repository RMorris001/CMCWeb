<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC.*" import="java.util.*"%>
<%
AdminInteractions ai = (AdminInteractions)session.getAttribute("function");
ArrayList<String> emphasis = new ArrayList<String>();

emphasis.add("Science");

boolean result = ai.editSchool(request.getParameter("Name"), request.getParameter("State"), request.getParameter("Location"), request.getParameter("Control"), Integer.parseInt(request.getParameter("Students")), Double.parseDouble(request.getParameter("Female")), Integer.parseInt(request.getParameter("SatVerbal")), Integer.parseInt(request.getParameter("SatMath")), 
		Double.parseDouble(request.getParameter("Expenses")), Double.parseDouble(request.getParameter("Aid")), Integer.parseInt(request.getParameter("Applicants")), Double.parseDouble(request.getParameter("Admitted")), Double.parseDouble(request.getParameter("Enrolled")), Integer.parseInt(request.getParameter("Academics")), 
				Integer.parseInt(request.getParameter("Social")), Integer.parseInt(request.getParameter("Quality")), emphasis);
response.sendRedirect("ViewSchools.jsp?Result="+result);
%>