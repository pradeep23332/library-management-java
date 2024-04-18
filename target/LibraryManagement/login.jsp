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
<title>Library Login</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<div class="row mt-2">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h3 class="text-center">Login</h3>
					
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
					
						<form action="login" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="email">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1" required="required" name="password">
							</div>
							<div class="text-center">
							<button type="submit" class="btn btn-primary">Login</button><br>
							<a href="register.jsp">Create Account</a>
							</div>
						</form>
						
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>