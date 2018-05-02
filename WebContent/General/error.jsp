<%@ page language="java" import="java.io.*" isErrorPage="true" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Error page</title>
    <meta charset="utf-8">
</head>
<body>
    <button onclick="history.back()">Back to Previous Page</button>
    <h1>404 Page Not Found.</h1>
    <br />
    <p><b>Error code:</b> ${pageContext.errorData.statusCode}</p>   
    <br />
    <p><b>Error message: </b><%=exception.getMessage()%></p>
    <br />
    <p><b>Stack Trace:</b></p>
<%
	StringWriter stringWriter = new StringWriter();
	PrintWriter printWriter = new PrintWriter(stringWriter);
	exception.printStackTrace(printWriter);
	out.println(stringWriter);
	printWriter.close();
	stringWriter.close();
%>
</body>
</html>