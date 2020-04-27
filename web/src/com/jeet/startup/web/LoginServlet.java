package com.jeet.startup.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jeet.startup.dao.*;
import com.jeet.startup.model.*;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private UserDao loginDao;

    public void init() {
        loginDao = new UserDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        LoginBean loginBean = new LoginBean();
        loginBean.setUsername(username);
        loginBean.setPassword(password);

        try {
        	User user=loginDao.validate(loginBean);
            if (user!=null) {
               // HttpSession session = request.getSession();
                
               // session.setAttribute("username",username);
                request.setAttribute("user", user);
                RequestDispatcher dispatcher = request.getRequestDispatcher("index2.jsp");
                dispatcher.forward(request, response);
               // response.sendRedirect("index2.jsp");
            } else {
            	System.out.println("Invalid Username and Password");
                HttpSession session = request.getSession();
                //session.setAttribute("user", username);
                //response.sendRedirect("login.jsp");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
   
    
	
	

}
