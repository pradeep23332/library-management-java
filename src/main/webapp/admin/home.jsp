<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- <%@ page import="com.entity.User"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Set"%>
<%@ page import="java.util.HashSet"%>
<%@ page import="java.util.Enumeration"%>
<%@ page import="java.io.*"%>
<%@ page import="com.user.servlet.LoginServlet"%> --%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:Home</title>
<%@include file="allCss.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>


	<div class="container">
		<div class="row p-5">
			<div class="col-md-3">
				<a href="add_books.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="far fa-plus-square fa-3x text-primary"></i><br>
							<h4>Add Books</h4>
							---------------
						</div>
					</div>
				</a>
			</div>




			<div class="col-md-3">
				<a href="all_books.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-book-open fa-3x text-danger"></i><br>
							<h4>All Books</h4>
							---------------
						</div>
					</div>
				</a>
			</div>




			<div class="col-md-3">
				<a href="borrowed.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-book-reader fa-3x text-warning"></i><br>
							<h4>Borrowed Books</h4>
							---------------
						</div>
					</div>
				</a>
			</div>




			<div class="col-md-3">
				<a href="add_books.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-sign-out-alt fa-3x text-primary"></i><br>
							<h4>LogOut</h4>
							---------------
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>
	<div style="margin-top: 400px;">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>