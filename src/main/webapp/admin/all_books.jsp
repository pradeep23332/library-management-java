<%@page import="com.entity.BookDtls"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Set"%>
<%@ page import="java.util.HashSet"%>
<%@ page import="java.util.Enumeration"%>
<%@ page import="java.io.*"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.DAO.BookDAOImpl"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: All Books</title>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<h3 class="text-center">Hello Admin</h3>

	<table class="table table-striped">
		<thead class="bg-primary text-white">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Image</th>
				<th scope="col">Book Name</th>
				<th scope="col">Author</th>
				<th scope="col">StockCount</th>
				<th scope="col">Categories</th>
				<th scope="col">Status</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<%
			DBConnect dbConnect = new DBConnect();
			BookDAOImpl dao = new BookDAOImpl(dbConnect.getConnection());
			List<BookDtls> list = dao.getAllBooks();
			for (BookDtls b : list) {
			%>
			<tr>
				<td><%=b.getBookId() %></td>
				<td><img src="../book/<%=b.getPhotoName() %>" style="width: 50px;height: 50px;"></td>
				<td><%=b.getBookName() %></td>
				<td><%=b.getAuthor() %></td>
				<td><%=b.getStock() %></td>
				<td><%=b.getBookCategory() %></td>
				<td><%=b.getStatus() %></td>
				<td><a href="#" class="btn btn-sm btn-primary">Edit</a> <a
					href="#" class="btn btn-sm btn-danger">Delete</a></td>
			</tr>
			<%
			}
			%>

		</tbody>
	</table>
	<div style="margin-top: 200px;">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>