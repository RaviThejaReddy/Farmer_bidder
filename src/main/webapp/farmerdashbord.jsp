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
	background-color: transparent; color : #fff; padding : 14px 20px; margin
	: 8px 0; border : none; outline : none; font-size : 20px;
	cursor: pointer;
	width: 100%;
	color: #fff;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	outline: none;
	font-size: 20px;
	text-shadow: 4px 4px 3px rgba(0, 0, 0, 0.8);
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
	width: 20%;
	text-shadow: 4px 4px 3px rgba(0, 0, 0, 0.2);
}

.tablink:after {
	background: transparent;
}
/* Style the tab content */
.tabcontent {
	background-color:transparent;
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
	font-size: 35px;
}

#gradient {
	width: 100%;
	height: 800px;
	padding: 0px;
	margin: 0px;
}


h1 {
font-size:50px;
	color: #fff;
	text-shadow: 4px 4px 3px rgba(0, 0, 0, 0.5);
}

h2 {
font-size:35px;
	color: #f08d3c;
	text-shadow: 4px 4px 3px rgba(0, 0, 0, 0.7);
}

p {
font-size:20px;
	color: #fff;
	text-shadow: 4px 4px 3px rgba(0, 0, 0, 0.1);
}

h4 {
font-size:40px;
	color: #fff;
	text-shadow: 4px 4px 3px rgba(0, 0, 0, 0.1);
}

/*---------------------table things-------------------------*/
table {
	border-collapse: collapse;
	border-spacing: 0;
	width: 100%;
	font-size: 25px;
	background-color: transparent;
	font-size: 18px;
}

th, td {
	color: #FFF;
	text-align: center;
	padding: 8px;
}
</style>
<link href='http://fonts.googleapis.com/css?family=Great+Vibes'
	rel='stylesheet' type='text/css'>
</head>
<body class="bg">
	<div style="top: 0;">
		<button class="tablink"
			onclick="window.location.href = 'dashboard.rsvp';">Home Page</button>
		<button class="tablink"
			onclick="openFunction('AboutUs', this, 'transparent')">AboutUs</button>
		<button class="tablink"
			onclick="window.location.href = 'logoutGeneral.rsvp';">Logout</button>
		<button class="tablink"
			onclick="openFunction('ContactUs', this, 'transparent')">Contact
			Us</button>
		<button class="tablink"
			onclick="openFunction('Insurance', this, 'transparent')">Insurance</button>
	</div>

	<div class="btn-group" style="float: left;">
		<button onclick="window.location.href = 'sellyourcropfarmer.jsp';">Sell
			Your Crop</button>
		<button onclick="window.location.href = 'viewmarketplace.rsvp';">View
			Market Place</button>
		<button onclick="window.location.href = 'viewsoldcrophistory.rsvp';">View
			Sold Crop History</button>
	</div>
	<div>
		<h2 style="left: 60%; top: 15%; position: absolute;">Welcome ${ farmerInFo.farmerFullName }</h2>
	</div>
	<div style="display: inline;">
	<h4  style="left: 9%; top: 36%; position: absolute;">Un Sold Crop List</h4>
	<div style="float: right;top:50%;position: absolute;">
		
		<table>
			<tr>
				<th>Last Day for Bid</th>
				<th>Crop Type</th>
				<th>Crop Name</th>
				<th>Quantity</th>
				<th>MSP</th>
				<th>Crop Sold Status</th>
			</tr>
			<c:forEach items="${ listofunsoldcrops }" var="crop">
				<tr>
					<td><c:out value="${crop.cropLastDateForBid}" /></td>
					<td><c:out value="${crop.cropType}" /></td>
					<td><c:out value="${crop.cropName}" /></td>
					<td><c:out value="${crop.cropQuantity}" /></td>
					<td><c:out value="${crop.cropBasicPrice}" /></td>
					<td><c:out value="${crop.cropSoldStatus}" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
<h4  style="left: 60%; top: 36%; position: absolute;">Non Active Crop List</h4>
	<div style="float: right;left:50%; top:50%;position: absolute;">
		
		<table>
			<tr>
				<th>Last Day for Bid</th>
				<th>Crop Type</th>
				<th>Crop Name</th>
				<th>Quantity</th>
				<th>MSP</th>
				<th>Crop Active Status</th>
			</tr>
			<c:forEach items="${ listofnonactivecrop }" var="crop">
				<tr>
					<td><c:out value="${crop.cropLastDateForBid}" /></td>
					<td><c:out value="${crop.cropType}" /></td>
					<td><c:out value="${crop.cropName}" /></td>
					<td><c:out value="${crop.cropQuantity}" /></td>
					<td><c:out value="${crop.cropBasicPrice}" /></td>
					<td><c:out value="${crop.cropActiveStatus}" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
	<div id="Insurance" class="tabcontent">
		<a> ${ ins }</a>
		<div style="float: right;position: absolute;right: 0%;">
		<button
			onclick="window.location.href = 'applyforinsurance.jsp';"
			style="width: auto;">Apply for Insurance</button>
		<button 
			onclick="window.location.href = 'claimInsurance.jsp';"
			style="width: auto;">Claim Insurance</button>
			</div>
	</div>
	<div id="AboutUs" class="footer">
		<h1>About Us</h1>
		<p>
			We will change the future with the help of <strong>Farmers</strong>.
		</p>
	</div>
	<div id="ContactUs" class="footer">
		<h4>Contact Us</h4>
		<p>Priyankya Roy</p>
		<p>Vishal and Satya</p>
		<p>RaviThejaReddy</p>
	</div>
	<!-- ************************************************************************************************************ -->
	<!-- ************************************************************************************************************ -->
	<!-- ************************************************************************************************************ -->
	<!-- homepage contactus aboutus Things ends here-->
	<!-- Start of Scripts -->
	<script>
		window.onclick = function(event) {
			if (event.target == modal1) {
				modal1.style.display = "none";
			}
			if (event.target == modal2) {
				modal2.style.display = "none";
			}
		}

		function openFunction(functionName, elmnt, color) {
			var i, tabcontent, tabcontent1, tablinks;
			tabcontent2 = document.getElementsByClassName("tabcontent");
			tabcontent1 = document.getElementsByClassName("footer");
			for (i = 0; i < tabcontent2.length; i++) {
				tabcontent2[i].style.display = "none";
			}
			for (i = 0; i < tabcontent1.length; i++) {
				tabcontent1[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablink");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].style.backgroundColor = "";
			}
			document.getElementById(functionName).style.display = "block";
			elmnt.style.backgroundColor = color;

		}
		document.getElementById("defaultOpen").click();
	</script>

	<!-- End of Scripts -->
</body>
</html>