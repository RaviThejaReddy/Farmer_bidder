<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	outline:none;
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
	background:transparent;
	width: 100%;
	outline: none;
	font: 400 130px/0.8 'Great Vibes', Helvetica, sans-serif;
  	color: #f08d3c;
    text-shadow: 4px 4px 3px rgba(0,0,0,0.7); 
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
	text-align:center;
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
	border: 4px double rgba(28,110,164,0.52);
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
background:transparent;
  color: #fff;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  font-size: 25px;
  width: 25%;
    text-shadow: 4px 4px 3px rgba(0,0,0,0.2);
}
.tablink:after{
background: transparent;
}
/* Style the tab content */
.tabcontent {
  color: white;
  display: none;
  padding: 50px;
  align-content:75%;
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
  background-repeat: no-repeat;
  background-size: cover;
}

.footer {
   position:absolute;
   color:white;
   bottom:0;
   text-align:center;
   display:none;
   width:100%;
   font-size:40px;
}
* {
	text-shadow: 4px 4px 3px rgba(0, 0, 0, 0.5);
}

h1 {
	color: #fff;
	text-shadow: 4px 4px 3px rgba(0, 0, 0, 0.5);
}

h2 {
	color: #f08d3c;
	text-shadow: 4px 4px 3px rgba(0, 0, 0, 0.7);
}

p {
	color: #fff;
	text-shadow: 4px 4px 3px rgba(0, 0, 0, 0.1);
}

h4 {
	color: #fff;
	text-shadow: 4px 4px 3px rgba(0, 0, 0, 0.1);
}

/*---------------------font color animation-------------------------*/

</style>
<link href='http://fonts.googleapis.com/css?family=Great+Vibes' rel='stylesheet' type='text/css'>
</head>
<body class="bg">
<div style="top:0;">
<button class="tablink" onclick="window.location.href = 'HomePage.jsp';" >Home Page</button>
<button class="tablink" onclick="openFunction('AboutUs', this, 'transparent')" >About Us</button>
<button class="tablink" onclick="openFunction('Login', this, 'transparent')">Login</button>
<button class="tablink" onclick="openFunction('ContactUs', this, 'transparent')" >Contact Us</button>
</div>
<div>
<div>
<h2 style="left:25%;right:15%;top:20%;position:absolute;">Welcome To Biotic</h2>
<h1 style="left:36%;right:30%;top:40%;position:absolute;">Fresh Organic Food</h1>
<h1 style="left:28%;top:47%;position:absolute;"> Your Password ${ mailthings }</h1>
</div>
								<!-- Login Things Starts here-->
<!-- ************************************************************************************************************ -->	
<!-- ************************************************************************************************************ -->	
<!-- ************************************************************************************************************ -->		
<div id="id01" class="modal">
		<form class="modal-content animate" action="loginfarmers.rsvp"
			method="post">
			<br> <br> <br>
			<div class="container">
				<label for="email"><b>Email</b></label> <input type="email"
					placeholder="Enter Email" name="email" required> <label
					for="password"><b>Password</b></label> <input type="password"
					placeholder="Enter Password" name="password" required>
				<div style="text-align:center;"><button class="re1" type="submit">Login</button></div>
				<label> <input type="checkbox" checked="checked"
					name="remember"> Remember me
				</label>
			</div>
			<br> <br> <br>
			<div class="container" style="background-color: #fefefe">
				<a href="FarmerRegistration.jsp"><button type="button" class="re">Register for New Account</button></a>
				<span class="psw">Forgot <a href="forgotpasswordgeneral.jsp">password?</a></span>
			</div>
		</form>
	</div>
<div id="id02" class="modal">
		<form class="modal-content animate" action="loginbidder.rsvp"
			method="post">
			<br> <br> <br>
			<div class="container">
				<label for="email"><b>Email</b></label> <input type="email"
					placeholder="Enter Email" name="email" required> <label
					for="password"><b>Password</b></label> <input type="password"
					placeholder="Enter Password" name="password" required>

				<button type="submit">Login</button>
				<label> <input type="checkbox" checked="checked"
					name="remember"> Remember me
				</label>
			</div>

			<br> <br> <br>
			<div class="container" style="background-color: #fefefe">
				<a href="bidderregistration.jsp"><button type="button" class="re" >Register for New Account</button></a>
				<span class="psw">Forgot <a href="forgotpasswordgeneral.jsp">password?</a></span>
			</div>
		</form>
	</div>

<!-- ************************************************************************************************************ -->	
<!-- ************************************************************************************************************ -->	
<!-- ************************************************************************************************************ -->
									<!-- Login Things Starts here-->
									
						<!-- homepage contactus aboutus Things Starts here-->	
<!-- ************************************************************************************************************ -->	
<!-- ************************************************************************************************************ -->	
<!-- ************************************************************************************************************ -->
<div id="Login" class="footer">
<h1>${ invalidcredentials }</h1>
	<button class="inv" onclick="document.getElementById('id01').style.display='block'"
		style="width: auto;">Farmer Login</button>
	<button class="inv" onclick="document.getElementById('id02').style.display='block'"
		style="width: auto;">Bidder Login</button>
</div>																
<div id="HomePage" class="footer">
  <h1>HomePage</h1>
  <p>Hi Welcome to our Page</p> 
</div>
<div id="AboutUs" class="footer">
  <h1>About Us</h1>
  <p>We will change the future with the help of <strong>Farmers</strong>.</p> 
</div>
<div id="ContactUs" class="footer">
  <h4>ContactUs</h4>
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
// Get the modal
var modal1 = document.getElementById('id01');
var modal2 = document.getElementById('id02');


// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal1) {
        modal1.style.display = "none";
    }
    if (event.target == modal2) {
        modal2.style.display = "none";
    }
}

function openFunction(functionName,elmnt,color) {
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
</script>

										<!-- End of Scripts -->
</div>

</body>
</html>