<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC.*" import="java.util.*"%>
    <%@include file="../General/GeneralTemplate.jsp"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<body>

<%
AdminInteractions ai = (AdminInteractions)session.getAttribute("function");
School school = ai.viewSchool(request.getParameter("Name"));
%>
<form method="post" action="EditSchool_action.jsp" name="editSchool">
<table style="text-align: left; background-color: #F4F6F7; width: 266px; height: 228px;"
border="1" >
<tbody>
<tr>
<th colspan="2">
</th>
</tr>

<tr>
<td style="vertical-align: top; padding-right:400px; white-space: nowrap;">SCHOOL<br>
				</td>
				<td style="vertical-align: top;"><input name="Name" value="<%=school.getName()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">STATE<br>
				</td>
				<td style="vertical-align: top;"><input name="State" value="<%=school.getState()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">LOCATION<br>
				</td>
				<td style="vertical-align: top;"><input name="Location" value="<%=school.getLocation()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">CONTROL<br>
				</td>
				<td style="vertical-align: top;"><input name="Control" value="<%=school.getControl()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;;">NUMBER OF STUDENTS<br>
				</td>
				<td style="vertical-align: top;"><input name="Students" value="<%=school.getNumStudents()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">% FEMALE<br>
				</td>
				<td style="vertical-align: top;"><input name="Female" value="<%=school.getPercentFemale()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">SAT VERBAL<br>
				</td>
				<td style="vertical-align: top;"><input name="SatVerbal" value="<%=school.getVerbalSAT()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">SAT MATH<br>
				</td>
				<td style="vertical-align: top;"><input name="SatMath" value="<%=school.getMathSAT()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">EXPENSES<br>
				</td>
				<td style="vertical-align: top;"><input name="Expenses" value="<%=school.getExpense()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">% FINANCIAL AID<br>
				</td>
				<td style="vertical-align: top;"><input name="Aid" value="<%=school.getPercentFinAid()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">NUMBER OF APPLICANTS<br>
				</td>
				<td style="vertical-align: top;"><input name="Applicants" value="<%=school.getNumApplicants()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">% ADMITTED<br>
				</td>
				<td style="vertical-align: top;"><input name="Admitted" value="<%=school.getPercentAdmit()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">% ENROLLED<br>
				</td>
				<td style="vertical-align: top;"><input name="Enrolled" value="<%=school.getPercentEnroll()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">ACADEMICS SCALE(1-5)<br>
				</td>
				<td style="vertical-align: top;"><input name="Academics" value="<%=school.getAcademicScale()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">SOCIAL SCALE(1-5)<br>
				</td>
				<td style="vertical-align: top;"><input name="Social" value="<%=school.getSocialScale()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">QUALITY OF LIFE SCALE()<br>
				</td>
				<td style="vertical-align: top;"><input name="Quality" value="<%=school.getQualityLifeScale()%>"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">EMPHASES<br>
				</td>
				<td style="vertical-align: top;">
				<%int i = 0;
				for(String e:school.getAreasOfStudy()) {%>
					<input name="Emphasis<%=i%>" value="<%=e%>">
				<% i++;
				}%>
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