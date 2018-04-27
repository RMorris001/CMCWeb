<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC.*" import="java.util.*" %>
<%@include file="/../General/AccountTemplate.jsp"%>
    <%	@SuppressWarnings("unchecked")
    	ArrayList<School> searchResults = (ArrayList<School>) session.getAttribute("results");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Search Results</title>
</head>
<body>
<table style="text-align: left; background-color: #F4F6F7; width: 235px; height: 280px;"
		border="1" cellpadding="2" cellspacing="2">
		<tbody>
			<tr><th colspan="3">Search Results<br></th></tr>
			<%for(School s:searchResults){ 
				String schoolName = s.getName();
				System.out.println(schoolName);%>
			<tr>
				<td style="vertical-align: top; padding-right:400px; white-space: nowrap;">
					<form method="post" action="SaveSchool.jsp" name="Save">
						<input value="Save" name="Save" type="submit" style="color: rgb(0, 0, 0);">
						<input name="SchoolName" value='<%=schoolName%>' type="hidden" >
					</form>
				</td>
				<td style="vertical-align: top; padding-right:400px; white-space: nowrap;">
					<%=s.getName()%>
				</td>
				<td style="vertical-align: top; padding-right:400px; white-space: nowrap;">
					<form method="post" action="ViewSchool.jsp" name="View">
						<input value="View" name="View" type="submit" style="color: rgb(0, 0, 0);">
						<input name="School" value='<%=s.getName()%>' type="hidden">
					</form>
				</td>
			</tr>
			<%}%>
</tbody>
</table>
</body>
</html>