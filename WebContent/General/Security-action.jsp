<%@page language="java" import="CMC.*"%>

<%
	if(session.getAttribute("function") == null){
		response.sendRedirect("/CMCWeb/index.jsp?param=securityError");
	}
	
%>