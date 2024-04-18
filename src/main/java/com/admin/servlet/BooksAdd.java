package com.admin.servlet;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.BookDAOImpl;
import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;

/**
 * Servlet implementation class BooksAdd
 */

@WebServlet("/add_books")
@MultipartConfig
public class BooksAdd extends HttpServlet {
	/*
	 * private static final long serialVersionUID = 1L;
	 * 
	 *//**
		 * @see HttpServlet#HttpServlet()
		 */
	/*
	 * public BooksAdd() { super(); // TODO Auto-generated constructor stub }
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
			String bookName = request.getParameter("bname");
			String author = request.getParameter("author");
			String stock = request.getParameter("stock");
			String categories = request.getParameter("categories");
			String status = request.getParameter("status");
			Part part = request.getPart("bimg");
			String fileName = part.getSubmittedFileName();

			BookDtls b = new BookDtls(bookName, author, stock, categories, status, fileName, "admin");

			// Create a new instance of DBConnect
			DBConnect dbConnect = new DBConnect();

			// Create a UserDAOImpl object
			BookDAOImpl dao = new BookDAOImpl(dbConnect.getConnection());

			// System.out.println(path);

			boolean f = dao.addBooks(b);

			HttpSession session = request.getSession();

			if (f) {

				String path = getServletContext().getRealPath("") + "book";

				File file = new File(path);
				part.write(path + File.separator + fileName);

				session.setAttribute("SuccessMsg", "Book Added Successfully");
				response.sendRedirect("admin/add_books.jsp");
			} else {
				session.setAttribute("failedMsg", "Something wrong on server");
				response.sendRedirect("admin/add_books.jsp");
			}

		} catch (SQLException e) {
			e.printStackTrace();
			// TODO: handle exception
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}

		// TODO Auto-generated method stub
		// doGet(request, response);
	}

}
