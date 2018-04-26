<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC.*"%>
<%
DBController dbHome = new DBController();
AdminInteractions ai = (AdminInteractions)session.getAttribute("function");
String uname = request.getParameter("Username");
String pword = request.getParameter("Password");
String fname = request.getParameter("FirstName");
String lname = request.getParameter("LastName");
char type = request.getParameter("Type").charAt(0);
char status = request.getParameter("Status").charAt(0);
ai.editAccount(uname,pword,fname,lname,type,status);
response.sendRedirect("AdminMenu.jsp");
%>