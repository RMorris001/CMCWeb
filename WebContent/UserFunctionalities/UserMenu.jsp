<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC.*" import="java.util.*"%>
<%@include file="/../General/AccountTemplate.jsp"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>







<%--<table style="text-align: center; background-color: #F4F6F7; width: 10%;" border="1" cellpadding="2"
cellspacing="2">--%>
<table align="center"
		style="background-color: #ecebe8; width: 20%; height: 60px;"
		border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr><th colspan="3">USER MENU<br></th></tr>
<tr>
<td align="center" colspan="5" rowspan="1" style="vertical-align: top;">
<form method="post" action="Search.jsp" name="Search">
	<input value="Search" name="Search" type="submit" style="background-color: #00b300; /* Green */ border: 1px; color: black; padding: 20px; text-align: center; font-size: 12px; margin: 5px 25px; cursor: pointer; border-radius: 2px; width: 60%;"> 
</form>
</td>
</tr>

<tr>
<td align="center" colspan="5" rowspan="1" style="vertical-align: top;">
<form method="post" action="ViewSavedSchools.jsp" name="Search">
	<input value="View Saved Schools" name="View Saved Schools" type="submit" style="background-color: #00b300; /* Green */ border: 1px; color: black; padding: 20px; text-align: center; font-size: 12px; margin: 5px 25px; cursor: pointer; border-radius: 2px; width: 60%;"> 
</form>
</td>
</tr>

<tr>
<td align="center" colspan="5" rowspan="1" style="vertical-align: top;">
<form method="post" action="EditProfile.jsp" name="Search">
	<input value="Edit Profile" name="Edit Profile" type="submit" style="background-color: #00b300; /* Green */ border: 1px; color: black; padding: 20px; text-align: center; font-size: 12px; margin: 5px 25px; cursor: pointer; border-radius: 2px; width: 60%;"> 
</form>
</td>
</tr>

</tbody>
</table>

</body>
</html>