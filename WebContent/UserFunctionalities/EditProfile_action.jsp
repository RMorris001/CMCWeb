<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC.*"%>
    <%@include file="/../General/Security-action.jsp"%>
<%
DBController dbHome = new DBController();
UserInteractions ui = (UserInteractions)session.getAttribute("function");
ui.editProfile(request.getParameter("FirstName"), request.getParameter("LastName"), request.getParameter("Password"));
response.sendRedirect("UserMenu.jsp");
%>