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
user.setLoggedOn(true);
if (user != null && user.isLoggedOn()) {
%>
<table style="vertical-align: left; width: 50%; height: 60px;"
	border="1" cellpadding="2" cellspacing="2">
	<tbody>
		<tr>
			<th colspan="3"><%=user.getUsername().toUpperCase()%>'S SAVED SCHOOLS<br>
			</th>
		</tr>
		<%for(School s: user.getSaved()){%>
		<tr>
			<td	style="vertical-align: top; white-space: nowrap; height: 33%; width: 33%;">
				<form method="post" action="RemoveSavedSchool.jsp" name="View">
					<input value="Remove" name="Remove" type="submit" style="color: rgb(0, 0, 0);">
					<input name="School" value=<%=s.getName()%> type="hidden">
				</form>
			</td>
			<td style="vertical-align: top; white-space: nowrap; height: 33%; width: 33%;">
				<%=s.getName()%><br>
			</td>
			<td style="vertical-align: top; white-space: nowrap; height: 33%; width: 33%;">
				<form method="post" action="ViewSchool.jsp" name="View">
					<input value="View" name="View" type="submit" style="color: rgb(0, 0, 0);">
					<input name="School" value=<%=s.getName()%> type="hidden">
				</form>
			</td>
		</tr>
		<%}%>
		<tr>
			<th colspan="3">
				<form method="post" action="UserMenu.jsp" name="Cancel">
					<input value="Cancel" name="Cancel" type="submit" style="color: rgb(0, 0, 0);">
				</form>
			</th>
		</tr>
	</tbody>
</table>
<%}%>


</body>
</html>