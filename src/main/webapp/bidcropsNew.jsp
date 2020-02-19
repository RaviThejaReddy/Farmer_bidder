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
input {
	width: 20%;
	padding: 12px 20px;
	margin: 8px 0;
	color:#f08d3c;
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
	width: 16.66%;
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
	position: relative;
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
	color: black;
	text-shadow: 4px 4px 3px rgba(0, 0, 0, 0.1);
}

h4 {
font-size:20px;
	color: #fff;
	text-shadow: 4px 4px 3px rgba(0, 0, 0, 0.1);
}
/*---------------------table things-------------------------*/
table {
	border-collapse: collapse;
	border-spacing: 0;
	width: 100%;
	font-size: 18px;
	background-color: transparent;
}

th, td {
	color: #FFF;
	text-align: center;
	padding: 8px;
}
.bg-modal {
	background-color: rgba(0, 0, 0, 0.8);
	width: 100%;
	height: 100%;
	position: absolute;
	top: 0;
	display: none;
	justify-content: center;
	align-items: center;
}

.modal-contents {
	height: 300px;
	width: 500px;
	background-color: white;
	text-align: center;
	padding: 20px;
	position: relative;
	border-radius: 4px;
	margin:auto;
	top:25%;
}

.input1 {
	margin: 15px auto;
	display: block;
	width: 50%;
	padding: 8px;
	border: 1px solid gray;
}

</style>
<link href='http://fonts.googleapis.com/css?family=Great+Vibes'
	rel='stylesheet' type='text/css'>
</head>
<body class="bg">
	<div style="top: 0;">
		<button class="tablink"
			onclick="window.location.href = 'bidderdashboard.jsp';">Home
			Page</button>
		<button class="tablink"
			onclick="window.location.href = 'fetchallcrops.rsvp';">Bid
			Crops</button>
		<button class="tablink"
			onclick="window.location.href = 'activebids.rsvp';">View
			Your Biddings</button>
		<button class="tablink"
			onclick="openFunction('AboutUs', this, 'transparent')">AboutUs</button>
		<button class="tablink"
			onclick="window.location.href = 'logoutGeneral.rsvp';">Logout</button>
		<button class="tablink"
			onclick="openFunction('ContactUs', this, 'transparent')">Contact
			Us</button>
	</div>

	<div>
		<h2 style="left: 43%; top: 20%; position: absolute;">Welcome</h2><br><br><br><br><br><br><br><br><br><br>
		<center>
			<h2>${ biddername }</h2>
			<h1>${ successfullbidmsg }</h1>
			<h1>${nocrops }</h1>
			<h1>List Of Crops To Bid</h1>
		</center>
	</div>
	<form action="bidding.rsvp" onsubmit="return doSubmit()">
		<table>
			<tr>
				<th>Select To Bid</th>
				<th>Crop Type</th>
				<th>Crop Name</th>
				<th>Base Price</th>
				<th>Current Bid</th>
				<th>Last Day Of Bid</th>
			</tr>
			<c:forEach items="${ cropsList }" var="crop">
				<tr>
					<td><input type="radio" name="bidthiscrop"
						value="${ crop.cropId }" /></td>
					<td>${ crop.cropType }</td>
					<td>${ crop.cropName }</td>
					<td>${ crop.cropBasicPrice }</td>
					<td>${ crop.cropCurrentBid }</td>
					<td>${ crop.cropLastDateForBid }</td>
					<input type="hidden" id="${ crop.cropId }" value="${ crop.cropCurrentBid }" />
				</tr>
			</c:forEach>
		</table>
		
		<div class="bg-modal" id="bg">
			<div class="modal-contents">
				<h1 style="color: #f08d3c;">Enter Amount greater than the Current Bid</h1>
				<input class="input1" type="number" name="bidamount"/>
				<p style="display: none;" id="p1">Please enter amount greater than the current bid amount</p>
							
				<input type="submit" value="Submit" />
			</div>
		</div>


		<input
			style="position: absolute; margin-top: 50px; margin-left: 37%; background-color: #336600 width:300px; border-radius: 5px"
			type="button" id="b1" onclick="myTest()" value="CLICK TO BID" />
	</form>
	<div id="AboutUs" class="footer">
		<h4>About Us</h4>
		<p>
			We will change the future with the help of <strong>Farmers</strong>.
		</p>
	</div>
	<div id="ContactUs" class="footer">
		<h4>Contact Us</h4>
		<p>Priyanka Roy</p>
		<p>Vishal and Satya</p>
		<p>RaviThejaReddy</p>
	</div>
	<!-- ************************************************************************************************************ -->
	<!-- ************************************************************************************************************ -->
	<!-- ************************************************************************************************************ -->
	<!-- homepage contactus aboutus Things ends here-->
	<!-- Start of Scripts -->
	<script>
		function openFunction(functionName, elmnt, color) {
			var i, tabcontent, tablinks;
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
		
		var cropId,currentBidAmount; 
		
		
		function close() {
			document.getElementById('bg').style.display='none';
		}
		
		
		function doSubmit(){
			var amount=document.getElementsByName('bidamount')[0].value;
	
			if(amount < currentBidAmount)
				{
				var p1=document.getElementById('p1').style.display="block";	
				return false;}
			else{
				return true;
			}
		}
		
		function myTest() {
			
			var ele = document.getElementsByName('bidthiscrop'); 
	         
	         for(i = 0; i < ele.length; i++) { 
	             if(ele[i].checked) 
					cropId = ele[i].value; 
	         } 
			currentBidAmount = document.getElementById(cropId).value;
			document.getElementById('bg').style.display = 'block';
			document.getElementById('b1').style.display = 'none';
		}
	</script>


</body>
</html>