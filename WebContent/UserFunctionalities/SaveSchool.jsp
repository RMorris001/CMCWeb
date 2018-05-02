<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC.*" import="java.util.*"%>
    <%@include file="/../General/Security-action.jsp"%>
    <%@ page errorPage="error.jsp" %>  
    
    <%
    UserInteractions ui = (UserInteractions) session.getAttribute("function");
    String schoolName = request.getParameter("SchoolName");
    System.out.println("name: " +schoolName);
    ui.saveSchool(schoolName);
    response.sendRedirect("UserMenu.jsp");
    %>
