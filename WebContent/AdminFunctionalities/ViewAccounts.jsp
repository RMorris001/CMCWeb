<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="CMC.*" import="java.util.*"%>
<%@include file="/../General/AccountTemplate.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Accounts</title>
</head>
<body>

	<%
		DBController dbHome = new DBController();
		//AdminInteractions ai = (AdminInteractions)session.getAttribute("function"); #4CAF50 #F4F6F7
		AdminInteractions ai = new AdminInteractions(dbHome.getAdmin("nadmin"));
		ArrayList<Account> allAccounts = ai.viewAccounts();
	%>

	<table
		style="vertical-align: left; background-color: #4CAF50; width: 50%; height: 60px;"
		border="1" cellpadding="2" cellspacing="2">

		<tr>
			<th colspan="3">All Accounts</th>
		</tr>
		<%
			for (Account a : allAccounts) {
		%>
		<tr>
			<td
				style="vertical-align: top; white-space: nowrap; height: 33%; width: 33%;">
				<%=a.getFirst()%><br>
			</td>
			<td
				style="vertical-align: top; white-space: nowrap; height: 33%; width: 33%;">

				<form method="post" action="ViewAccount.jsp" name="View">
					<input value="View" name="View" type="submit"
						style="color: rgb(0, 0, 0);"> <input name="Account"
						value=<%=a.getFirst()%> type="hidden">
				</form>

				<form method="post" action="EditAccount.jsp" name="EditAccount">
					<input value="Edit" name="Edit" type="submit"style="color: rgb(0, 0, 0);"> 
					<input name="EditAccount" value=<%=a.getFirst()%> type="hidden">
					<input name="UserName" value=<%=a.getUsername()%> type="hidden" >
				</form>

				<form method="post" action="ChangeStatus.jsp" name="ChangeStatus">
					<input value="ChangeStatus" name="ChangeStatus" type="submit"
						style="color: rgb(0, 0, 0);"> <input name="Account"
						value=<%=a.getFirst()%> type="hidden">
				</form>

				<form method="post" action="RemoveAccount.jsp" name="Remove">
					<input value="Remove" name="Remove" type="submit"
						style="color: rgb(0, 0, 0);"> <input name="Account"
						value=<%=a.getUsername()%> type="hidden">
				</form>

			</td>
		</tr>
		<%
			}
		%>

	</table>

</body>
</html>