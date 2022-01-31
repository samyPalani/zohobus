package com.bus.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	
	
	public static Connection getConnection() {
		Connection con=null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elab", "root", "Palani@2001");
		}catch (SQLException se) {
			se.printStackTrace();
			
		}catch(ClassNotFoundException cl) {
			cl.printStackTrace();
		}
		 catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
