package com.bus.controller;

import java.io.IOException;

import com.bus.bean.UserBean;
import com.bus.dao.UserDao;
import com.bus.dao.UserDaoImpl;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/log")
public class LoginControl  extends HttpServlet{

	
	private static final long serialVersionUID = 5333595222317933999L;

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserBean bean= new UserBean();
		
		bean.setEmail(req.getParameter("email"));
		bean.setPass(req.getParameter("pass"));
		
	
		
	
		UserDao dao= new UserDaoImpl();
		
	
		
		
		String role = dao.userLogin(bean);
		
		if(role.equalsIgnoreCase("ADMIN")) { 
			req.getRequestDispatcher("adminHome.jsp").forward(req,resp);
		}else if (role.equalsIgnoreCase("USER")) {
			req.getRequestDispatcher("userHome.jsp").forward(req, resp);
		}else {
			req.setAttribute("alert", "Invalid Username/Password");
			req.getRequestDispatcher("login.jsp").forward(req, resp);
			}
		
		
		
	}
}
