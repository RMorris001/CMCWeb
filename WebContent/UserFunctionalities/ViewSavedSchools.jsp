<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="CMC.*" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Saved Schools</title>
</head>
<body>

<%
DBController dbHome = new DBController();
//User user = (User)LogOn.getCurrentAccount();
ArrayList<School> savedSchools = new ArrayList<School>();
savedSchools.add(dbHome.getSchool("YALE"));
savedSchools.add(dbHome.getSchool("BROWN"));
User user = new User("TESTUser", "TESTPass", "First", "Last", 'u', 'Y', savedSchools);
LogOn.setCurrentAccount(user);
if (user != null) {
%>

<table style="text-align: center; width: 590px; height: 60px;"
	border="1" cellpadding="2" cellspacing="2">
	<tbody>
		<tr>
			<th colspan="3">SCHOOL<br>
			</th>
		</tr>
		<%for(School s: user.getSaved()){%>
		<tr>
			<td
				style="vertical-align: top; white-space: nowrap; height: 33%; width: 33%;"><input
				value="Remove" name="Remove" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td
				style="vertical-align: top; white-space: nowrap; height: 33%; width: 33%;"><%=s.getName()%><br>
			</td>
			<td
				style="vertical-align: top; white-space: nowrap; height: 33%; width: 33%;"><input
				value="Edit" name="Edit" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
		</tr>
		<%}%>
	</tbody>
</table>

<%}%>




</body>
</html>