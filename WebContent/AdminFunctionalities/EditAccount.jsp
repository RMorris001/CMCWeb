<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC.*" import="java.util.*"%>
<%@include file="/../General/AccountTemplate.jsp"%>
<%@include file="/../General/Security-action.jsp"%>
<%@ page errorPage="error.jsp" %>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
AdminInteractions ai = (AdminInteractions)session.getAttribute("function");
String uName = request.getParameter("UserName");
Account user = ai.getAccount(uName);
%>
<form method="post" action="EditAccount_action.jsp" name="editUser">
<table style="text-align: left; background-color: #F4F6F7; width: 266px; height: 228px;"
border="1" >
<tbody>
<tr>
<th colspan="3">
</th>
</tr>
<tr>
<td style="vertical-align: top; white-space: nowrap;">First Name<br>
</td>
<td style="vertical-align: top;"><input name="FirstName" value=<%=user.getFirst()%>><br>
</td>
</tr>
<tr>
<tr>
<td style="vertical-align: top;">Last Name<br>
</td>
<td style="vertical-align: top;"><input name="LastName" value="<%=user.getLast()%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;"><input name="Username" value="<%=user.getUsername()%>" readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input name="Password" value="<%=user.getPassword()%>"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Type<br>
</td>
<td style="vertical-align: top;"><input name="Type" value="<%=user.getType()%>">
</td>
</tr>
<tr>
<td style="vertical-align: top;">Status<br>
</td>
<td style="vertical-align: top;"><input name="Status" value="<%=user.getStatus()%>" readonly> 
</td>
</tr>

<tr>
<td style="vertical-align: top;"><input value="Reset"
name="Reset" type="reset" style="color: rgb(0, 0, 0);"></td>
<td style="vertical-align: top;"><input value="Submit"
name="Submit" type="submit" style="color: rgb(0, 0, 0);"></td>
</tr>
</tbody>
</table>
<br>
</form>
<br>

</body>
</html>