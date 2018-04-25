<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC.*" import="java.util.*"%>
    
    <%
    UserInteractions ui = (UserInteractions) session.getAttribute("function");
    ui.saveSchool(request.getParameter("School"));
    response.sendRedirect("UserMenu.jsp"); 
    %>
