<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.entity.User"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Set"%>
<%@ page import="java.util.HashSet"%>
<%@ page import="java.util.Enumeration"%>
<%@ page import="java.io.*"%>
<%@ page import="com.user.servlet.LoginServlet"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>User:Home</h1>

	<c:if test="${not empty userobj}">
		<p class="text-center">Welcome, ${userobj.email}</p>
		<!-- Display more user information here if needed -->
	</c:if>
</body>
</html>