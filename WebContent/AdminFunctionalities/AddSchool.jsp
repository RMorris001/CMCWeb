<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC.*" import="java.util.*"%>
<%@include file="/../General/AccountTemplate.jsp"%>
<%@include file="/../General/Security-action.jsp"%>
<%@ page errorPage="error.jsp" %>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<body>
<form method="post" action="AddSchool_action.jsp" name="addSchool">
<table align = "center" style="text-align: center; background-color: #F4F6F7; width: 266px; height: 228px;"
border="1" >
<tbody>

<tr>
<td style="vertical-align: top;">SCHOOL<br>
				</td>
				<td style="vertical-align: top;"><input name="Name"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">STATE<br>
				</td>
				<td style="vertical-align: top;"><input name="State"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">LOCATION<br>
				</td>
				<td style="vertical-align: top;"><input name="Location"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">CONTROL<br>
				</td>
				<td style="vertical-align: top;"><input name="Control"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;;">NUMBER OF STUDENTS<br>
				</td>
				<td style="vertical-align: top;"><input name="Students"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">% FEMALE<br>
				</td>
				<td style="vertical-align: top;"><input name="Female"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">SAT VERBAL<br>
				</td>
				<td style="vertical-align: top;"><input name="SatVerbal"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">SAT MATH<br>
				</td>
				<td style="vertical-align: top;"><input name="SatMath"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">EXPENSES<br>
				</td>
				<td style="vertical-align: top;"><input name="Expenses"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">% FINANCIAL AID<br>
				</td>
				<td style="vertical-align: top;"><input name="Aid"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">NUMBER OF APPLICANTS<br>
				</td>
				<td style="vertical-align: top;"><input name="Applicants"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">% ADMITTED<br>
				</td>
				<td style="vertical-align: top;"><input name="Admitted"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">% ENROLLED<br>
				</td>
				<td style="vertical-align: top;"><input name="Enrolled"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">ACADEMICS SCALE(1-5)<br>
				</td>
				<td style="vertical-align: top;"><input name="Academics"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">SOCIAL SCALE(1-5)<br>
				</td>
				<td style="vertical-align: top;"><input name="Social"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">QUALITY OF LIFE SCALE<br>
				</td>
				<td style="vertical-align: top;"><input name="Quality"><br>
				</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">EMPHASES<br>
				</td>
				<td style="vertical-align: top;">
				<%for(int i = 0; i < 5; i++) {%>
					<input name="Emphasis<%=i%>">
				<% 
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