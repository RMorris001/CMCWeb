<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC.*" import="java.util.*"%>
    <%@include file="/../General/AccountTemplate.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%AdminInteractions ai = (AdminInteractions)session.getAttribute("function");%>
<table style="text-align: left; background-color: #F4F6F7; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">

<td colspan="18" rowspan="1" style="vertical-align: top;"><a
href="AddSchool.jsp">ADD A UNIVERSITY</a>
</td>
</tr>

<tr>
<td style="vertical-align: top; text-align: center;">School
</td>
<td style="vertical-align: top; text-align: center;">State
</td>
<td style="vertical-align: top; text-align: center;">Location
</td>
<td style="vertical-align: top; text-align: center;">Control
</td>
<td style="vertical-align: top; text-align: center;"># of Students
</td>
<td style="vertical-align: top; text-align: center;">% Female
</td>
<td style="vertical-align: top; text-align: center;">SAT Verbal		
</td>
<td style="vertical-align: top; text-align: center;">SAT Math
</td>
<td style="vertical-align: top; text-align: center;">Expenses
</td>
<td style="vertical-align: top; text-align: center;">% with Financial Aid
</td>
<td style="vertical-align: top; text-align: center;"># of Applicants
</td>
<td style="vertical-align: top; text-align: center;">% Admitted
</td>
<td style="vertical-align: top; text-align: center;">% Enrolled
</td>
<td style="vertical-align: top; text-align: center;">Academic Scale (1-5)
</td>
<td style="vertical-align: top; text-align: center;">Social Scale (1-5)
</td>
<td style="vertical-align: top; text-align: center;">Quality of Life Scale (1-5)
</td>
<td></td>
<td></td>
</tr>


<%
ArrayList<School> schools = ai.viewSchools();
int numSchools = schools.size();
for (int i = 0; i < numSchools; i++){
%>

<tr>

<td style="vertical-align: top;">
<%=schools.get(i).getName() %>
</td>
<td style="vertical-align: top;">
<%=schools.get(i).getState() %>
</td>
<td style="vertical-align: top;">
<%=schools.get(i).getLocation() %>
</td>
<td style="vertical-align: top;">
<%=schools.get(i).getControl() %>
</td>
<td style="vertical-align: top;">
<%=schools.get(i).getPercentFemale() %>
</td>
<td style="vertical-align: top;">
<%=schools.get(i).getNumStudents() %>
</td>
<td style="vertical-align: top;">
<%=schools.get(i).getVerbalSAT() %>
</td>
<td style="vertical-align: top;">
<%=schools.get(i).getMathSAT() %>
</td>
<td style="vertical-align: top;">
<%=schools.get(i).getExpense() %>
</td>
<td style="vertical-align: top;">
<%=schools.get(i).getPercentFinAid() %>
</td>
<td style="vertical-align: top;">
<%=schools.get(i).getNumApplicants() %>
</td>
<td style="vertical-align: top;">
<%=schools.get(i).getPercentAdmit() %>
</td>
<td style="vertical-align: top;">
<%=schools.get(i).getPercentEnroll() %>
</td>
<td style="vertical-align: top;">
<%=schools.get(i).getAcademicScale() %>
</td>
<td style="vertical-align: top;">
<%=schools.get(i).getSocialScale()%>
</td>
<td style="vertical-align: top;">
<%=schools.get(i).getQualityLifeScale() %>
</td>

<td style="vertical-align: top;">
<form method="post" action="EditSchool.jsp" name="Edit">
	<input name="Edit" value="Edit" type="submit" style="color: rgb(0, 0, 0);">
    <input name="Name" value="<%=schools.get(i).getName()%>" type="hidden">
    <input name="State" value="<%=schools.get(i).getState()%>" type="hidden">
    <input name="Location" value="<%=schools.get(i).getLocation()%>" type="hidden">
    <input name="Control" value="<%=schools.get(i).getControl()%>" type="hidden">
    <input name="NumStudents" value="<%=schools.get(i).getNumStudents()%>" type="hidden">
    <input name="PercentFemale" value="<%=schools.get(i).getPercentFemale()%>" type="hidden">
    <input name="SATVerbal" value="<%=schools.get(i).getVerbalSAT()%>" type="hidden">
    <input name="SATMath" value="<%=schools.get(i).getMathSAT()%>" type="hidden">
    <input name="Expenses" value="<%=schools.get(i).getExpense()%>" type="hidden">
    <input name="PercentFinAid" value="<%=schools.get(i).getPercentFinAid()%>" type="hidden">
    <input name="NumApplicants" value="<%=schools.get(i).getNumApplicants()%>" type="hidden">
    <input name="PercentAdmit" value="<%=schools.get(i).getPercentAdmit()%>" type="hidden">
    <input name="PercentEnroll" value="<%=schools.get(i).getPercentEnroll()%>" type="hidden">
    <input name="AcademicScale" value="<%=schools.get(i).getAcademicScale()%>" type="hidden">
    <input name="SocialScale" value="<%=schools.get(i).getSocialScale()%>" type="hidden">
    <input name="QualityLifeScale" value="<%=schools.get(i).getQualityLifeScale()%>" type="hidden">
    
</form>
</td>

<td style="vertical-align: top;">
<form method="post" action="RemoveSchool.jsp" name="Remove">
    <input name="Remove" value="Remove" type="submit" style="color: rgb(0, 0, 0);">
    <input name="Name" value=<%=schools.get(i).getName() %> type="hidden">
</form>
</td>
</tr>
<%} %>

</tbody>
</table>
</body>
</html>