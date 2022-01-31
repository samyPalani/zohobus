package com.bus.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bus.bean.UserBean;
import com.bus.db.DbConnection;

public class UserDaoImpl implements UserDao {

	@Override
	public boolean userRegister(UserBean b) {
	Connection con=null;
		boolean flag=false;
		try {
			con=DbConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("INSERT INTO user(name,email,dob,pass,role)values(?,?,?,?,'USER')");
			ps.setString(1, b.getName());
			ps.setString(2, b.getEmail());
			ps.setString(3, b.getDob());
			ps.setString(4, b.getPass());
			
			int i= ps.executeUpdate();
			if(i!=0) {
				flag=true;
			}
		}catch(SQLException se) {
			se.printStackTrace();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	@Override
	public String userLogin(UserBean b)
	
	{
		String role = null;

try {
	Connection con=DbConnection.getConnection();
	String sql="SELECT role from user where email=? AND pass=?";
	PreparedStatement ps= con.prepareStatement(sql);
	ps.setString(1, b.getEmail());
	ps.setString(2, b.getPass());
	ResultSet rs= ps.executeQuery();
	
	
	if(rs!=null) {
		while(rs.next()) {
			role=rs.getString(1);
		}
	}
}
catch(SQLException se) {
	se.printStackTrace();
}catch(Exception e) {
	e.printStackTrace();
}
return role;
	}
}
