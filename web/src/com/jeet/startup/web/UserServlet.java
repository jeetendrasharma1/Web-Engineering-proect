package com.jeet.startup.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
import com.jeet.startup.dao.UserDao;
import com.jeet.startup.model.User;




@WebServlet("/registration")
public class UserServlet extends HttpServlet {
       
    
	private static final long serialVersionUID = 1L;
	private UserDao userDao;
	
	 public void init() {
	        userDao = new UserDao();
	    }
       
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    
		   
		    String name = request.getParameter("first_name")+" "+request.getParameter("last_name");
	        String email = request.getParameter("email");
	   
	        String username = request.getParameter("username");
	        String password = request.getParameter("password");
	        String phone = request.getParameter("phone");
	        User newUser = new User(name, email,username,password,phone );
	       
		 
		 

	        try { 
	        userDao.insertUser(newUser);      
	            	        } 
	        catch (SQLException ex) {
	            throw new ServletException(ex);
	        }
	        response.sendRedirect("index.jsp#Login");
		    }		    
		  

   	
}
