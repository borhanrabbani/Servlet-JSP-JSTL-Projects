package com.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {
	
	String sql = "select * from basic_info where email=? and password=?";
	String url = "jdbc:mysql://localhost:3306/signup_info";
	String username = "root";
	String pass = "1234";
	
	public boolean check(String email, String password) throws SQLException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, username, pass);
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1, email);
			st.setString(2, password);
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				return true;
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

}
