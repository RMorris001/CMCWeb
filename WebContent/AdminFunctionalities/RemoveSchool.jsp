<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC.*" import="java.util.*"%>

<%
AdminInteractions ai = (AdminInteractions)session.getAttribute("UserControllerInstance");
School delSchool = ai.viewSchool(request.getParameter("Name"));
ai.removeSchool(delSchool);
response.sendRedirect("ViewSchools.jsp");
%>