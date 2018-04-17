<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="CMC.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View School</title>
</head>
<body>

<%
DBController dbHome = new DBController();
User user = (User)LogOn.getCurrentAccount();
School school = dbHome.getSchool(request.getParameter("School"));
boolean saved = user.getSaved().contains(school);
if(school!=null && user.isLoggedOn()){
%>
	<table style="text-align: left; width: 235px; height: 280px;"
		border="1" cellpadding="2" cellspacing="2">
		<tbody>
			<tr>
			<%if(saved){%>
				<th colspan="3">VIEW SAVED SCHOOL<br>
			<%}else{%>
				<th colspan="3">VIEW SCHOOL<br>
			<%}%>
				</th>
			</tr>
			<tr>
				<td style="vertical-align: top; padding-right:400px; white-space: nowrap;">SCHOOL<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly" name="SchoolName" value="<%=school.getName()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">STATE<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly" name="State" value="<%=school.getState()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">LOCATION<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly" name="Location" value="<%=school.getLocation()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">CONTROL<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly" name="Control" value="<%=school.getControl()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">NUMBER OF STUDENTS<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly" name="Students" value="<%=school.getNumStudents()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">% FEMALE<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly" name="Female" value="<%=school.getPercentFemale()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">SAT VERBAL<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly" name="SatVerbal" value="<%=school.getVerbalSAT()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">SAT MATH<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly" name="SatMath" value="<%=school.getMathSAT()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">EXPENSES<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly" name="Expenses" value="<%=school.getExpense()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">% FINANCIAL AID<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly" name="Aid" value="<%=school.getPercentFinAid()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">NUMBER OF APPLICANTS<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly" name="Applicants" value="<%=school.getNumApplicants()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">% ADMITTED<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly" name="Admitted" value="<%=school.getPercentAdmit()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">% ENROLLED<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly" name="Enrolled" value="<%=school.getPercentEnroll()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">ACADEMICS SCALE(1-5)<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly" name="Academics" value="<%=school.getAcademicScale()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">SOCIAL SCALE(1-5)<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly" name="Social" value="<%=school.getSocialScale()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">QUALITY OF LIFE SCALE<br>
				</td>
				<td style="vertical-align: top;"><input readonly="readonly" name="Quality" value="<%=school.getQualityLifeScale()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">EMPHASES<br>
				</td>
				<td style="vertical-align: top;">
				<%for(String e:school.getAreasOfStudy()) {%>
					<input readonly="readonly" name="Emphasis" value="<%=e%>">
				<%}%>
				</td>
			</tr>
			<tr>
				<td>
					<form method="post" action="ViewSavedSchools.jsp" name="Cancel">
					<input value="Cancel" name="Cancel" type="submit" style="color: rgb(0, 0, 0);">
					</form>
				</td>
				<%if(saved){%>
					<td>
						<form method="post" action="RemoveSavedSchool.jsp" name="View">
							<input value="Remove" name="Remove" type="submit" style="color: rgb(0, 0, 0);">
							<input name="School" value=<%=school.getName()%> type="hidden">
						</form>
					</td>
				<%}else{%>
					<td>
						<form method="post" action="SaveSchool.jsp" name="Save">
							<input value="Save" name="Save" type="submit" style="color: rgb(0, 0, 0);">
							<input name="School" value=<%=school.getName()%> type="hidden">
						</form>
					</td>
				<%}%>
				
			</tr>
		</tbody>
	</table>
<%}%>

</body>
</html>