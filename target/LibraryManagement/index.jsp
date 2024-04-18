<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Management index page</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/book.jpg");
	height: 50vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}
.crd-ho:hover{
background-color: #fcf7f7; 
}

</style>

</head>
<body style="background-color: #f7f7f7;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-img">
		<h2 class="text-center text-white">Library Management System</h2>
	</div>
	
	<!-- Start Recent Book  -->

	<div class="container">
		<h3 class="text-center">Recent Book</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>Sadee</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-2"><i class="fas fa-cart-plus"></i> Add Cart</a>
							<a href="" class="btn btn-success btn-sm ml-1">Veiw Details</a>
							<a href="" class="btn btn-danger btn-sm ml-1">2019</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>Sadee</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-2"><i class="fas fa-cart-plus"></i> Add Cart</a>
							<a href="" class="btn btn-success btn-sm ml-1">Veiw Details</a>
							<a href="" class="btn btn-danger btn-sm ml-1">2019</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>Sadee</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-2"><i class="fas fa-cart-plus"></i> Add Cart</a>
							<a href="" class="btn btn-success btn-sm ml-1">Veiw Details</a>
							<a href="" class="btn btn-danger btn-sm ml-1">2019</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/sql.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>Sadee</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-2"><i class="fas fa-cart-plus"></i> Add Cart</a>
							<a href="" class="btn btn-success btn-sm ml-1">Veiw Details</a>
							<a href="" class="btn btn-danger btn-sm ml-1">2019</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center mt-1">
		<a href="" class="btn btn-danger btn-sm text-white">Veiw All</a>
		</div>
		
	</div>
<!-- End Recent Book  -->

<hr>

<!-- Start New Book  -->

	<div class="container">
		<h3 class="text-center">New Book</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>Sadee</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-2"><i class="fas fa-cart-plus"></i> Add Cart</a>
							<a href="" class="btn btn-success btn-sm ml-1">Veiw Details</a>
							<a href="" class="btn btn-danger btn-sm ml-1">2019</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>Sadee</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-2"><i class="fas fa-cart-plus"></i> Add Cart</a>
							<a href="" class="btn btn-success btn-sm ml-1">Veiw Details</a>
							<a href="" class="btn btn-danger btn-sm ml-1">2019</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>Sadee</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-2"><i class="fas fa-cart-plus"></i> Add Cart</a>
							<a href="" class="btn btn-success btn-sm ml-1">Veiw Details</a>
							<a href="" class="btn btn-danger btn-sm ml-1">2019</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/sql.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>Sadee</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-2"><i class="fas fa-cart-plus"></i> Add Cart</a>
							<a href="" class="btn btn-success btn-sm ml-1">Veiw Details</a>
							<a href="" class="btn btn-danger btn-sm ml-1">2019</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center mt-1">
		<a href="" class="btn btn-danger btn-sm text-white">Veiw All</a>
		</div>
		
	</div>
<!-- End New Book  -->

<hr>

<!-- Start Old Book  -->

	<div class="container">
		<h3 class="text-center">Old Book</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>Sadee</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-5">Veiw Details</a>
							<a href="" class="btn btn-danger btn-sm ml-1">2019</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>Sadee</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-5">Veiw Details</a>
							<a href="" class="btn btn-danger btn-sm ml-1">2019</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>Sadee</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-5">Veiw Details</a>
							<a href="" class="btn btn-danger btn-sm ml-1">2019</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/sql.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>Sadee</p>
						<p>Categories: New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-5">Veiw Details</a>
							<a href="" class="btn btn-danger btn-sm ml-1">2019</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center mt-1">
		<a href="" class="btn btn-danger btn-sm text-white">Veiw All</a>
		</div>
		
	</div>
<!-- End Old Book  -->

<%@include file="all_component/footer.jsp" %>

</body>
</html>