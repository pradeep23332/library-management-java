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
 * Servlet implementation class LoginServlet
 */

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	/*
	 * private static final long serialVersionUID = 1L;
	 * 
	 *//**
		 * @see HttpServlet#HttpServlet()
		 */
	/*
	 * public LoginServlet() { super(); // TODO Auto-generated constructor stub }
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
            // Create a new instance of DBConnect
            DBConnect dbConnect = new DBConnect();

            // Create a UserDAOImpl object
            UserDAOImpl dao = new UserDAOImpl(dbConnect.getConnection());

            String email = request.getParameter("email");
            String password = request.getParameter("password");

            // Authenticate user
            User user = dao.login(email, password);

            if (user != null) {
                // User is authenticated
                HttpSession session = request.getSession();
                session.setAttribute("userobj", user);
                if ("admin@gmail.com".equals(email) && "admin123".equals(password)) {
                    // If admin, redirect to admin home page
                    response.sendRedirect("admin/home.jsp");
                } else {
                    // If regular user, redirect to regular user home page
                    response.sendRedirect("home.jsp");
                }
            } else {
                // Authentication failed
                request.getSession().setAttribute("failedMsg", "Email & Password Invalid");
                response.sendRedirect("login.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle SQL exception
        } catch (Exception e) {
            e.printStackTrace();
            // Handle other exceptions
        }
    }

}
