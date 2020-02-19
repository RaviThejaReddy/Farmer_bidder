<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href='https://fonts.googleapis.com/css?family=Averia Gruesa Libre' rel='stylesheet'>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body, html {
font-family: 'Averia Gruesa Libre';
	height: 100%;
}
/* Full-width input fields */
input[type=email], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	outline: none;
	border-radius: 30px 30px 30px 30px;
	box-sizing: border-box;
}

/* Set a style for all buttons */
button {
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	outline: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

.inv {
	background: transparent;
	width: 100%;
	outline: none;
	font: 400 130px/0.8 'Great Vibes', Helvetica, sans-serif;
	color: #f08d3c;
	text-shadow: 4px 4px 3px rgba(0, 0, 0, 0.7);
}

.inv:hover {
	opacity: 0.6;
	outline: none;
}

/* Extra styles for the cancel button */
.re {
	width: auto;
	padding: 10px 18px;
	background-color: #4CAF50;
	outline: none;
	border-radius: 30px 30px 30px 30px;
}

.re1 {
	width: 15% auto;
	padding: 10px 18px;
	background-color: #4CAF50;
	text-align: center;
	outline: none;
	border-radius: 30px 30px 30px 30px;
}
/* Center the image and position the close button */
.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
	position: relative;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 16px;
	border-radius: 0px 0px 0px 30px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	padding-top: 90px;
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 5% auto 15% auto;
	/* 5% from the top, 15% from the bottom and centered */
	border: 4px double rgba(28, 110, 164, 0.52);
	border-radius: 30px 30px 0px 30px;
	width: 50%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
	position: absolute;
	right: 25px;
	top: 0;
	color: #000;
	font-size: 35px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: red;
	cursor: pointer;
}

/* Add Zoom Animation */
.animate {
	-webkit-animation: animatezoom 0.6s;
	animation: animatezoom 0.6s
}

@
-webkit-keyframes animatezoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes animatezoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}

/* for top tab*/
.tablink {
	background: transparent;
	color: #fff;
	float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	font-size: 20px;
	width: 14.28%;
	text-shadow: 4px 4px 3px rgba(0, 0, 0, 0.2);
}

.tablink:after {
	background: transparent;
}
/* Style the tab content */
.tabcontent {
	color: white;
	display: none;
	padding: 50px;
	align-content: 75%;
	text-align: center;
}

.bg {
	/* The image used */
	/* background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQmBzZMZtm0TGbEKnQwOoVPANmlme9LhZTT-amIUDvMTwGQUIoP"); */
	background-image: url("images/close-up-photo-of-berries-1379636 (1).jpg");
	/* Full height */
	height: 100%;
	/* Center and scale the image nicely */
	background-position: center;
	background-repeat: repeat;
	background-size: cover;
}

.footer {
	position: absolute;
	color: white;
	bottom: 0;
	text-align: center;
	display: none;
	width: 100%;
	font-size: 40px;
}

#gradient {
	width: 100%;
	height: 800px;
	padding: 0px;
	margin: 0px;
}

* {
	text-shadow: 4px 4px 3px rgba(0, 0, 0, 0.5);
}

h1 {
font-size:40px;
	color: #fff;
	text-shadow: 4px 4px 3px rgba(0, 0, 0, 0.5);
}

h2 {
font-size:50px;
	color: #f08d3c;
	text-shadow: 4px 4px 3px rgba(0, 0, 0, 0.7);
}

p {
font-size:20px;
	color: #fff;
	text-shadow: 4px 4px 3px rgba(0, 0, 0, 0.1);
}

h4 {
font-size:20px;
	color: #fff;
	text-shadow: 4px 4px 3px rgba(0, 0, 0, 0.1);
}

/*---------------------table things-------------------------*/
#notApprovedCrops {
	top: 70%;
	left: 0%;
	position: absolute;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	color: #fff;
	width: 45%;
	text-align: center;
}

#notApprovedCrops td, #notApprovedCrops th {
	padding: 8px;
	color: #fff;
}

#notApprovedCrops th {
	font-family: "Times New Roman", Times, serif;
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	color: #fff;
}

#approvedCrops {
	left: 23%; top : 50%;
	position: absolute;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	color: #fff;
	width: 60%;
	text-align: center;
}

#approvedCrops th {
	font-family: "Times New Roman", Times, serif;
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	color: #fff;
}
</style>
<link href='http://fonts.googleapis.com/css?family=Great+Vibes'
	rel='stylesheet' type='text/css'>
</head>
<body class="bg">
	<div style="top: 0;">
		<button class="tablink"
			onclick="window.location.href = 'adminDashboard.jsp';">Home
			Page</button>
		<button class="tablink"
			onclick="window.location.href = 'fetchAllUnverifiedCrops.rsvp';">Crop
			Approval</button>
		<button class="tablink"
			onclick="window.location.href = 'fetchAllBidding.rsvp';">Bidding
			Approval</button>
		<button class="tablink"
			onclick="window.location.href = 'fetchSoldBidding.rsvp';">Sold
			Crops</button>
		<button class="tablink"
			onclick="window.location.href = 'fetchAllFarmers.rsvp';">List
			Farmers</button>
		<button class="tablink"
			onclick="window.location.href = 'fetchAllBidders.rsvp';">List
			Bidders</button>
		<button class="tablink"
			onclick="window.location.href = 'adminLogout.rsvp';">Logout</button>
	</div>

	<div>
		<h2 style="left: 42%; top: 8%; position: absolute;">Welcome</h2>
		<br> <br> <br> <br> <br> <br> <br>
		<center>
			<h2>${sessionScope.loggedInAdmin.adminEmail }</h2>
		</center>
	</div>
	</div>
	<div>
		<h1 style="left: 32%; top: 35%; position: absolute;">_____Farmer Details______</h1>
		<table id="approvedCrops">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Contact</th>
			</tr>
			<c:forEach items="${ listOfFarmers }" var="farmer">
				<tr>
					<td>${farmer.farmerId }</td>
					<td>${farmer.farmerFullName }</td>
					<td>${farmer.farmerContact }</td>
				</tr>
			</c:forEach>
		</table>
	</div>

</body>
</html>