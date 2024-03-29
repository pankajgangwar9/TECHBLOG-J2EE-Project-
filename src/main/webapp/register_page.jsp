<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	clip-path: polygon(0% 15%, 0 0, 15% 0%, 85% 0%, 100% 0, 100% 15%, 100% 90%, 76% 96%
		, 56% 89%, 38% 98%, 19% 91%, 0 97%);
}
</style>
</head>
<body>
	<%@include file="normal_navbar.jsp"%>
	<main class="primary-background banner-background"
		style="padding-bottom: 85px;">
		<div class="container">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header text-center primary-background text-white">
						<span class="fa fa-3x fa-user-circle"></span> <br> Register
						Here
					</div>
					<div class="card-body">
						<form id="reg-form" action="RegisterServlet" method="post">

							<div class="form-group">
								<label for="user_name">User Name</label> <input name="user_name"
									type="text" class="form-control" id="user_name"
									aria-describedby="emailHelp" placeholder="Enter Name">
							</div>

							<!-- Email  -->
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									name="user_email" type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter email"
									pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"> <small
									id="emailHelp" class="form-text text-muted">We'll never
									share your email with anyone else.</small>
							</div>

							<!-- Password   -->
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									name="user_password" type="password" class="form-control"
									id="exampleInputPassword1" placeholder="Password">
							</div>
							<!-- Select Gender  -->
							<div class="form-group">
								<label for="gender">Select Gender</label> <br> <input
									type="radio" id="gender" name="user_gender" value="male">Male

								<input type="radio" id="gender" name="user_gender"
									value="female">female
							</div>

							<!-- Write About YourSelf -->
							<div class="form-group">
								<textarea name="user_about" rows="3" cols="60"
									placeholder="Enter something about yourself"></textarea>
							</div>
							<!-- Check Box  -->
							<div class="form-check">
								<input name="check" type="checkbox" class="form-check-input"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">agree terms and conditions</label>
							</div>
							<br>
							<!-- Submit Button  -->
							<div class="container text-center" id="loader"
								style="display: none;">
								<span class="fa fa-refresh fa-spin fa-3x"></span>
								<h4>Please Wait</h4>
							</div>
							<button id="submit-btn" type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</main>

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
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	<script>
$(document).ready(function(){
	console.log("loaded.....")
	
	$('#reg-form').on('submit',function(event){
	event.preventDefault();
	
	let form=new FormData(this);
	$("#submit-btn").hide();
	$("#loader").show();
	// send register servlet..
	$.ajax({
		url: "RegisterServlet",
		type: 'POST',
		data: form,
		success: function (data,textStatus,jqXHR){
			console.log(data)
			$("#submit-btn").show();
			$("#loader").hide();
			if(data.trim()=='done'){
			swal("Register Successfully .. We are going to redirect to login page..")
			.then((value) => {
			 window.location="login_page.jsp";
			});
			}else
				{
				swal(data);
				}
			},
	    error: function (jqXHR,textStatus,errorThrown){
	    	$("#submit-btn").show();
			$("#loader").hide();
	    	swal("Something went wrong ... try again later");
			
	},
		processData: false,
		contentType: false
	});
	});
});

</script>
</body>
</html>