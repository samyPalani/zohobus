package com.bus.dao;

import com.bus.bean.UserBean;

public interface UserDao {
	boolean userRegister(UserBean b);
	
	String userLogin(UserBean b);
}
