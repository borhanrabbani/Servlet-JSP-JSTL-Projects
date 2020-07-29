<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
</head>
<body>

	<%
		if(session.getAttribute("username")==null){
			response.sendRedirect("login.jsp");
		}
	%>
 Welcome ${username}
 
 <a href="videos.jsp">Click here to see the videos</a>
 
 	<br/><br/>
 	
 	<form action="Logout">
 		<input type="submit" value="logout">
 	</form>
</body>
</html>