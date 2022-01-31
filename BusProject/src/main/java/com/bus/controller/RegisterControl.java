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

@WebServlet("/reg")
public class RegisterControl extends HttpServlet {

	
	private static final long serialVersionUID = 7353808489425571224L;
	 
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Create Object OF UserBean Class
		UserBean bean= new UserBean();
		
		bean.setName(req.getParameter("name")); 
		bean.setEmail(req.getParameter("email"));
		bean.setDob(req.getParameter("dob"));
		bean.setPass(req.getParameter("pass"));
		
		System.out.println(bean.getName()+" "+bean.getEmail()+" "+bean.getDob()+" "+bean.getPass());
		
		UserDao dao= new UserDaoImpl();
		
		boolean flag= dao.userRegister(bean);
		
		if(flag==true) {
			req.setAttribute("alert","User Registered!!!");
		}else {
			req.setAttribute("alert","Something Wrong???");
		}
		req.getRequestDispatcher("register.jsp").forward(req, resp);
		
		
		
	}
	
}
