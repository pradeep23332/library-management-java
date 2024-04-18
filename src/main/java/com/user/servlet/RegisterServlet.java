package com.user.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	/*
	 * private static final long serialVersionUID = 1L;
	 * 
	 *//**
		 * @see HttpServlet#HttpServlet()
		 */
	/*
	 * public RegisterServlet() { super(); // TODO Auto-generated constructor stub }
	 * 
	 *//**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
		 *      response)
		 */
	/*
	 * protected void doGet(HttpServletRequest request, HttpServletResponse
	 * response) throws ServletException, IOException { // TODO Auto-generated
	 * method stub
	 * response.getWriter().append("Served at: ").append(request.getContextPath());
	 * }
	 * 
	 *//**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
		 *      response)
		 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		try {
			String name=request.getParameter("fname");
			String email=request.getParameter("email");
			String phno=request.getParameter("phno");
			String password=request.getParameter("password");
			String check=request.getParameter("check");
			
			// Create a new instance of DBConnect
	        DBConnect dbConnect = new DBConnect();
			
			//System.out.println(name+" "+email+" "+phno+" "+password+" "+check);
			User user=new User();
			user.setName(name);
			user.setEmail(email);
			user.setPhno(phno);
			user.setPassword(password);
			
			// Check Agree & Terms Condition
	        if (check == null) {
	            request.getSession().setAttribute("failedMsg", "Please Check Agree & Terms Condition.");
	            response.sendRedirect("register.jsp");
	            return;
	        }

	        // Perform user registration
	        UserDAOImpl dao = new UserDAOImpl(dbConnect.getConnection());
	        boolean success = dao.userRegister(user);
	        if (success) {
	            request.getSession().setAttribute("SuccessMsg", "You Registered Successfully");
	        } else {
	            request.getSession().setAttribute("failedMsg", "Something went wrong on the server.");
	        }
	        response.sendRedirect("register.jsp");
			
			
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			// TODO: handle exception
		}catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
