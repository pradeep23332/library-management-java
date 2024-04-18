<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.HashSet" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.io.*" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Add Books</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f2f2; ">
	<%@include file="navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Add Books</h4>
						
						<%-- Display success message if available --%>
                        <%
                            String successMsg = (String) session.getAttribute("SuccessMsg");
                            if (successMsg != null && !successMsg.isEmpty()) {
                        %>
                        <p class="text-center text-success"><%= successMsg %></p>
                        <%
                            session.removeAttribute("SuccessMsg");
                            }
                        %>
                        <%-- Display error message if available --%>
                        <%
                            String failedMsg = (String) session.getAttribute("failedMsg");
                            if (failedMsg != null && !failedMsg.isEmpty()) {
                        %>
                        <p class="text-center text-danger"><%= failedMsg %></p>
                        <%
                            session.removeAttribute("failedMsg");
                            }
                        %>
						
						<form action="../add_books" method="post"
							enctype="multipart/form-data">

							<div class="form-group">
								<label for="exampleInputEmail1">Book Name*</label> <input
									name="bname" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">
							</div>

							<div class="form-group">
								<label for="exampleInputAuthor">Author Name*</label> <input
									name="author" type="text" class="form-control"
									id="exampleInputAuthor" aria-describedby="emailHelp">
							</div>

							<div class="form-group">
								<label for="exampleInputPrice">Stock Count*</label> <input
									name="stock" type="number" class="form-control"
									id="exampleInputPrice">
							</div>

							<div class="form-group">
								<label for="inputState">Book Categories</label> <select
									id="inputState" name="categories" class="form-control">
									<option selected>--select--</option>
									<option value="New">New Book</option>
								</select>
							</div>
							<div class="form-group">
								<label for="inputState">Book Status</label> <select
									id="inputState" name="status" class="form-control">
									<option selected>--select--</option>
									<option value="Available">Available</option>
									<option value="NotAvailable">Not Available</option>
								</select>
							</div>

							<div class="form-group">
								<label for="exampleFormControlFile1">Upload Photo</label> <input
									name="bimg" type="file" class="form-control-file"
									id="exampleFormControlFile1">
							</div>
							<button type="submit" class="btn btn-primary">Add</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 100px;">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>