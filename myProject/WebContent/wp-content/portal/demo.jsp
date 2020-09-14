<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
String userName=(String)session.getAttribute("Rolltype");
    
if(userName=="employee"){
	response.sendRedirect(request.getContextPath()+"/wp-content/employee/Dashboard.jsp");
}
else if(userName=="hade")
{
	response.sendRedirect(request.getContextPath()+"/wp-content/hade/Dashboard.jsp");
}
else if(userName=="engineer")
{
	response.sendRedirect(request.getContextPath()+"/wp-content/engineer/Dashboard.jsp");
}
else 
{
	response.sendRedirect(request.getContextPath()+"/wp-content/portal/Dashboard.jsp");
}


%>