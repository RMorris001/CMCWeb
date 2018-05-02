<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC.*" import="java.util.*"%>
    <%@include file="/../General/Security-action.jsp"%>

<%
AdminInteractions ai = (AdminInteractions)session.getAttribute("function");
School delSchool = ai.viewSchool(request.getParameter("Name"));
ai.removeSchool(delSchool);
response.sendRedirect("ViewSchools.jsp");
%>
