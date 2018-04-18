<%@page language="java" import="CMC.*"%>
<% 
	LogOn logOnObject = new LogOn();
	Account potentialUser = logOnObject.run(request.getParameter("Username"), request.getParameter("Password"));
	
	UserInteractions ui;
	AdminInteractions ai;
	if(potentialUser == null){
		response.sendRedirect("index.jsp?Error=nonActive");
	}
	else if(potentialUser.getType() == 'a'){
			ai = new AdminInteractions();
			response.sendRedirect("AdminMenu.jsp");
		}
	else if(potentialUser.getType() == 'u'){
			ui = new UserInteractions(potentialUser);
			response.sendRedirect("UserMenu.jsp");
		}
	else{
			response.sendRedirect("index.jsp?Error=type");
		}
%>