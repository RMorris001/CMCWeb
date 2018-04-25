<%@page language="java" import="CMC.*"%>
<%
	LogOn logOnObject = new LogOn();
	Account potentialUser = logOnObject.run(request.getParameter("Username"), request.getParameter("Password"));

	UserInteractions ui;
	AdminInteractions ai;
	if (potentialUser == null) {
		response.sendRedirect("index.jsp?Error=nonAccount");
	} else {
		if (potentialUser.getType() == 'a') {
			ai = new AdminInteractions();
			session.setAttribute("function", (AdminInteractions)ai);
			response.sendRedirect("/CMCWeb/AdminFunctionalities/AdminMenu.jsp");
		} else if (potentialUser.getType() == 'u') {
			ui = new UserInteractions(potentialUser);
			session.setAttribute("function", (UserInteractions)ui);
			response.sendRedirect("/CMCWeb/UserFunctionalities/UserMenu.jsp");
		} else {
			response.sendRedirect("index.jsp?Error=type");
		}
	}
%>