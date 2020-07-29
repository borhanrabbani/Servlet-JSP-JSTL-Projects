<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tutorial Videos</title>
</head>
<body>
	<%
		if(session.getAttribute("username")==null){
			response.sendRedirect("login.jsp");
		}
	%>

	<a href="https://www.youtube.com/watch?v=cYc3FjhMMzI&list=PLsyeobzWxl7pUPF2xjjJiG4BKC9x_GY46&index=32">Login using Servlet and JSP practical Part 1</a>

	<br/><br/>
	<form action="Logout">
 		<input type="submit" value="logout">
 	</form>

</body>
</html>