<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href='https://fonts.googleapis.com/css?family=Averia Gruesa Libre' rel='stylesheet'>
<title>Admin Login Page</title>
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<style>
body {
font-family: 'Averia Gruesa Libre';
	margin: 0;
	width: 100%;
	height: 100vh;
	font-family: "Exo", sans-serif;
	color: #fff;
	background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
	background-size: 400% 400%;
	animation: gradientBG 15s ease infinite;
}

@
keyframes gradientBG { 0% {
	background-position: 0% 50%;
}

50%
{
background-position


:


100%
50%;
}
100%
{
background-position


:


0%
50%;
}
}
.container {
	width: 50%;
	border: 9px outset rgba(28, 110, 164, 0.35);
	border-radius: 40px 40px 40px 40px;
	background-color: white;
	text-align: center;
}

.objects {
	background-color: transparent;
	text-align: center;
}

h1 {
	font-weight: 300;
}

h3 {
	color: #eee;
	font-weight: 100;
}

h5 {
	color: #eee;
	font-weight: 300;
}

a, a:hover {
	text-decoration: none;
	color: #ddd;
}

.icosn {
	left: 20%;
	top: 30%;
	position: absolute;
}

.foram {
	left: 50%;
	top: 30%;
	position: absolute;
}
</style>
</head>
<body>
	 <h3 style="text-align: center;">${errorMsg}</h3>
	<div>
		<div class="icosn">
			<img src="images/img-01.png" alt="IMG">
		</div>
		<div class="foram">
			<form action="adminLogin.rsvp" method="get"
				class="login100-form">
				<span class="login100-form-title"> Admin Login </span>

				<div class="wrap-input100"
					data-validate="Valid email is required: ex@abc.xyz">
					<input class="input100" type="text" name="adminEmail"
						placeholder="Email"> <span class="focus-input100"></span>
					<span class="symbol-input100"> <i class="fa fa-envelope"
						aria-hidden="true"></i>
					</span>
				</div>
				<div class="wrap-input100"
					data-validate="Password is required">
					<input class="input100" type="password" name="adminPassword"
						placeholder="Password"> <span class="focus-input100"></span>
					<span class="symbol-input100"> <i class="fa fa-lock"
						aria-hidden="true"></i>
					</span>
				</div>

				<div class="container-login100-form-btn">
					<button type="submit" class="login100-form-btn">Login</button>
				</div>
			</form>
		</div>
	</div>
	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script>
		$('.js-tilt').tilt({
			scale : 1.1
		})
	</script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>
</body>
</html>