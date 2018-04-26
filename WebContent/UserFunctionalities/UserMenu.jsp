<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC.*" import="java.util.*"%>
    <%@include file="../General/GeneralTemplate.jsp"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>







<table style="text-align: center; background-color: #F4F6F7; width: 10%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr>
<td colspan="5" rowspan="1" style="vertical-align: top;">
<form method="post" action="Search.jsp" name="Search">
	<input value="Search" name="Search" type="submit"style="color: rgb(0, 0, 0);"> 
</form>
</td>
</tr>

<tr>
<td colspan="5" rowspan="1" style="vertical-align: top;">
<form method="post" action="ViewSavedSchools.jsp" name="Search">
	<input value="View Saved Schools" name="View Saved Schools" type="submit"style="color: rgb(0, 0, 0);"> 
</form>
</td>
</tr>

<tr>
<td colspan="5" rowspan="1" style="vertical-align: top;">
<form method="post" action="EditProfile" name="Search">
	<input value="Edit Profile" name="Edit Profile" type="submit"style="color: rgb(0, 0, 0);"> 
</form>
</td>
</tr>

</tbody>
</table>

</body>
</html>