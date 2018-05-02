<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="CMC.*" import="java.util.*"%>
<%@include file="/../General/AccountTemplate.jsp"%>
<%@include file="/../General/Security-action.jsp"%>
<%@ page errorPage="error.jsp" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Accounts</title>
</head>
<body>

	<%
		AdminInteractions ai = (AdminInteractions)session.getAttribute("function"); //#4CAF50 #F4F6F7
		ArrayList<Account> allAccounts = ai.viewAccounts();
	%>

	<table align="center"
		style="background-color: #ecebe8; width: 25%; height: 60px;"
		border="1" cellpadding="2" cellspacing="2">

		<tr>
			<th colspan="3"><a href="AddNewAccount.jsp">ADD NEW ACCOUNT</a></th>
		</tr>
		<%
		System.out.println("*****************************************************************************************************************");
			for (Account a : allAccounts) {
				System.out.println(a.getUsername());
				
		%>
		<tr>
			<td
				style="vertical-align: top; white-space: nowrap; height: 33%; width: 33%;">
				 <%=a.getUsername()%><br>
				Type: <%if(a.getType() == 'a'){out.print("Admin");}else{out.print("User");}%>
			</td>
			<td
				style="vertical-align: top; white-space: nowrap; height: 33%; width: 33%;">


				<form method="post" action="EditAccount.jsp" name="EditAccount">
					<input value="View/Edit" name="Edit" type="submit"
						style="background-color: #00b300; /* Green */ border: 1px; color: black; padding: 20px; text-align: center; font-size: 12px; margin: 5px 25px; cursor: pointer; border-radius: 2px; width: 60%;">
					<input name="EditAccount" value=<%=a.getFirst()%> type="hidden">
					<input name="UserName" value=<%=a.getUsername()%> type="hidden" >
				</form>
				<%if(a.getType() == 'u'){%>
				<form class="button" method="post" action="ToggleActivation.jsp"
					name="ChangeStatus">
					<input
						value=<%if (a.getStatus() == 'N') {
					out.print("Activate");
				} else {
					out.print("Deactivate");
				}%>
						name="Status" type="submit"
						style="background-color: #00b300; /* Green */ border: 1px; color: black; padding: 20px; text-align: center; font-size: 12px; margin: 5px 25px; cursor: pointer; border-radius: 2px; width: 60%;">
					<input name="Username" value=<%=a.getUsername()%> type="hidden">
				</form>
				<%}%>
				<form method="post" action="RemoveAccount.jsp" name="Remove">
					<input value="Remove" name="Remove" type="submit"
						style="background-color: #00b300; /* Green */ border: 1px; color: black; padding: 20px; text-align: center; font-size: 12px; margin: 5px 25px; cursor: pointer; border-radius: 2px; width: 60%;">
					 <input name="Account" value=<%=a.getUsername()%> type="hidden">
				</form>

			</td>
		</tr>
		<%}%>

	</table>

</body>
</html>
