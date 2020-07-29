<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String email = request.getParameter("email");
		String phone_number = request.getParameter("phone_number");
		String password = request.getParameter("password");
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup_info", "root", "1234");
			Statement st = conn.createStatement();
			
			int i = st.executeUpdate("insert into basic_info(first_name, last_name, email, phone_number, password)values('"+first_name+"', '"+last_name+"', '"+email+"', '"+phone_number+"', '"+password+"')");
			
			if(i==1){
				out.println("Congratulations!!! you have just created your account");
			}else{
				out.println("This email is already registered. Try with another email.");
			}
			
		}catch(Exception e){
			out.println("This email is already registered. Try with another email.");
			//System.out.println(e);
			//e.printStackTrace();
		}
	
	%>


</body>
</html>











