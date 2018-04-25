<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC.*" import="java.util.*"%>
 <%@include file="UserTemplate.jsp"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
UserInteractions ui = (UserInteractions)session.getAttribute("function");
User user = ui.getUser();
%>
<form method="post" action="EditProfile_action.jsp" name="editUser">
<table style="text-align: left; background-color: #F4F6F7; width: 266px; height: 228px;"
border="1" >
<tbody>
<tr>
<th colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<%=user.getUsername().toUpperCase()%>'S PROFILE<br>
</th>
</tr>
<tr>
<td style="vertical-align: top; white-space: nowrap;">First Name<br>
</td>
<td style="vertical-align: top;"><input name="FirstName" value="<%=user.getFirst()%>"><br>
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
<td style="vertical-align: top;"><input name="Type" value="<%=user.getType()%>" readonly> </td>
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