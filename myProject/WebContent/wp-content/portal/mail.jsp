<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/Controller" id="wizard" class="form-horizontal row-border p-md" method="post">
    			<input type="hidden" name="actionCode" value="email">
    			<input type="Email" name="email">
<input type="submit" value="submit"> 
 

</form>
</body>
</html>