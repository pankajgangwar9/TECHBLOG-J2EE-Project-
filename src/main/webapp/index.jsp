<%@page import="com.tech.blog.helper.ConnectionProvider"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link href="CSS/mystyle.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
.banner-background {
	clip-path: polygon(100% 0, 100% 100%, 61% 96%, 29% 97%, 0 100%, 0 0);
}
</style>
</head>
<body>
	<!--  navbar -->
	<%@include file="normal_navbar.jsp"%>

	<!-- Banner -->
	<div class="container_fluid p-0 m-0">
		<div class="jumbotron primary-background text-white banner-background">
			<div class="container">
				<h3 class="display-t">Welcome to Apttechno</h3>
				<p>Hello, Guys here you get all The Latest news about Tech
				<p>
					<button class="btn btn-outline-dark btn-lg">
						<span class="fa fa-external-link-square"></span>Start! its Free
					</button>
					<a href="login_page.jsp" class="btn btn-outline-dark btn-lg"> <span
						class="fa fa-user-circle"></span>Login
					</a>
			</div>
		</div>
	</div>

	<!-- Cards -->
	<div class="container">
		<div class="row mb-2">
			<div class="col-md-4">
				<div class="card">

					<div class="card-body">
						<h5 class="card-title">Latest Gadgets</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary primary-background text-black">Read
							more</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">

					<div class="card-body">
						<h5 class="card-title">Latest Games</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary primary-background text-black">Read
							more</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">

					<div class="card-body">
						<h5 class="card-title">Latest News</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary primary-background text-black">Read
							more</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<div class="card">

					<div class="card-body">
						<h5 class="card-title">Latest Gadgets</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary primary-background text-black">Read
							more</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">

					<div class="card-body">
						<h5 class="card-title">Latest Games</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary primary-background text-black">Read
							more</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">

					<div class="card-body">
						<h5 class="card-title">Latest News</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary primary-background text-black">Read
							more</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- JAVASCRIPTS -->
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"
		integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

</body>
</html>