<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/../General/AccountTemplate.jsp"%>
<%@include file="/../General/Security-action.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search School</title>
</head>
<body>
<form method="post" action="Search_action.jsp" name="Search">

<table style="text-align: left; background-color: #F4F6F7; width: 235px; height: 280px;"
		border="1" cellpadding="2" cellspacing="2">
		<tbody>
			<tr><th colspan="3">SEARCH SCHOOL<br></th></tr>
			<tr>
				<td style="vertical-align: top; padding-right:200px; white-space: nowrap;">by SCHOOL NAME<br>
				</td>
				<td style="vertical-align: top;">contains
					<input name="SchoolName" value=""><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">by STATE<br>
				</td>
				<td style="vertical-align: top;">contains
					<input name="State" value=""><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">by LOCATION<br>
				</td>
				<td style="vertical-align: top;">
					<input name="Location" value="">(SUBURBAN, URBAN, SMALL-CITY or -1 for UNKNOWN)<br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">by CONTROL<br>
				</td>
				<td style="vertical-align: top;">
					<input name="Control" value="" >(PRIVATE, STATE, CITY or -1 for UNKNOWN)<br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">by NUMBER OF STUDENTS<br>
				</td>
				<td style="vertical-align: top;">between
					<input name="StudentsL" value="">and
					<input name="StudentsH" value=""><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">by % FEMALE<br>
				</td>
				<td style="vertical-align: top;">between
					<input name="FemaleL" value="">and
					<input name="FemaleH" value=""><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">by SAT VERBAL<br>
				</td>
				<td style="vertical-align: top;">between
					<input name="SatVerbalL" value="">and
					<input name="SatVerbalH" value=""><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">by SAT MATH<br>
				</td>
				<td style="vertical-align: top;">between
					<input name="SatMathL" value="">and
					<input name="SatMathH" value=""><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">by EXPENSES<br>
				</td>
				<td style="vertical-align: top;">between
					<input name="ExpensesL" value="">and
					<input name="ExpensesH" value=""><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">by % FINANCIAL AID<br>
				</td>
				<td style="vertical-align: top;">between
					<input name="AidL" value="">and
					<input name="AidH" value=""><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">by NUMBER OF APPLICANTS<br>
				</td>
				<td style="vertical-align: top;">between
					<input name="ApplicantsL" value="">and
					<input name="ApplicantsH" value=""><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">by % ADMITTED<br>
				</td>
				<td style="vertical-align: top;">between
					<input name="AdmittedL" value="">and
					<input name="AdmittedH" value=""><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">by % ENROLLED<br>
				</td>
				<td style="vertical-align: top;">between
					<input name="EnrolledL" value="">and
					<input name="EnrolledH" value=""><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">by ACADEMICS SCALE(1-5)<br>
				</td>
				<td style="vertical-align: top;">between
					<input name="AcademicsL" value="">and
					<input name="AcademicsH" value=""><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">by SOCIAL SCALE(1-5)<br>
				</td>
				<td style="vertical-align: top;">between
					<input name="SocialL" value="">and
					<input name="SocialH" value=""><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">by QUALITY OF LIFE SCALE<br>
				</td>
				<td style="vertical-align: top;">between
					<input name="QualityL" value="">and
					<input name="QualityH" value=""><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top; white-space: nowrap;">by EMPHASES<br>
				</td>
				<td style="vertical-align: top; padding-right:440px;">contains either<br>
					<input name="Emphasis0" value=""><br>
					<input name="Emphasis1" value=""><br>
					<input name="Emphasis2" value=""><br>
					<input name="Emphasis3" value=""><br>
					<input name="Emphasis4" value="">
				</td>
			</tr>
			<tr>
				<td>
					<input value="Reset" name="Reset" type="reset" style="color: rgb(0, 0, 0); padding-right:150px; padding-left:150px;">

				</td>
					<td>
						<input value="SUBMIT" name="Submit" type="submit" style="color: rgb(0, 0, 0); padding-right:280px; padding-left:280px;">
						<input name="School" value="" type="hidden">
					</td>
			</tr>
		</tbody>
	</table>
</form>
</body>
</html>