<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href='https://fonts.googleapis.com/css?family=Averia Gruesa Libre' rel='stylesheet'>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}
body, html {
font-family: 'Averia Gruesa Libre';
	height: 100%;
}


input{
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}
.bg {
  /* The image used */
  /* background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQmBzZMZtm0TGbEKnQwOoVPANmlme9LhZTT-amIUDvMTwGQUIoP"); */
	background-image: url("images/close-up-photo-of-berries-1379636 (1).jpg");
		  /* Full height */

height:100%;
  background-position: center;
  background-repeat:repeat;
  background-size:cover;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  width:50%;
  left:28%;
  position:relative;
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  margin-bottom: 0;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
</head>
<body class="bg">
<div class="container">
<h1>${ err }</h1>
  <form action="registrationFarmer.rsvp" method="post" enctype="multipart/form-data" onsubmit="return validatePassword()">
  <label>Personal Details</label>
    <div class="row">
      <div class="col-25">
        <label for="name">Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="name" name="farmerFullName" required placeholder="Your name..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="contact">Contact No</label>
      </div>
      <div class="col-75">
        <input type="tel" id="contact" pattern="[6-9]{1}[0-9]{9}" name="farmerContact" required placeholder="eg.starts with[6,7,8,9]xxxxxxxxx">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="email">email</label>
      </div>
      <div class="col-75">
        <input type="email" id="email" name="email" required placeholder="eg. abc@xyz.com">
      </div>
    </div>
    <label>Address Line</label>
    <div class="row">
      <div class="col-25">
        <label for="addressline1">Address line1</label>
      </div>
      <div class="col-75">
       <input type="text" id="addressline1" required name="farmerAddressLine1" placeholder="Your AddressLine1..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="addressline2">Address line2</label>
      </div>
      <div class="col-75">
       <input type="text" id="addressline2" name="farmerAddressLine2" placeholder="Your AddressLine2..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="city">City</label>
      </div>
      <div class="col-75">
       <input type="text" id="city" required name="farmerCity" placeholder="Your city.."> 
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="state">State</label>
      </div>
      <div class="col-75">
       <input type="text" id="state"  required name="farmerState" placeholder="Your state.."> 
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="pincode">Pin Code</label>
      </div>
      <div class="col-75">
       <input type="number" id="pincode" required pattern="[1-9]{6}" name="farmerPinCode" placeholder="Your pin code.ex.xxxxxx"> 
      </div>
    </div>
    <label>Land Details</label>
    <div class="row">
      <div class="col-25">
        <label for="area">Land Area</label>
      </div>
      <div class="col-75">
       <input type="number" id="area" required name="farmerLandArea" placeholder="Your land area.."> 
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="addressl">Land Address</label>
      </div>
      <div class="col-75">
       <input type="text" id="addressl" required name="farmerLandAddress" placeholder="Your land address.."> 
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="pincodel">Land pin code</label>
      </div>
      <div class="col-75">
       <input type="number" id="pincodel" required pattern="[1-9]{6}" name="farmerLandPinCode" placeholder="Your land pin code..ex.xxxxxx"> 
      </div>
    </div>
    <label>Bank Details</label>
    <div class="row">
      <div class="col-25">
        <label for="accountno">Account No</label>
      </div>
      <div class="col-75">
       <input type="number" id="accountno" required name="farmerAccountNo" required placeholder="Your Bank Account No.."> 
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="ifsccode">IFSC Code</label>
      </div>
      <div class="col-75">
       <input type="text" id="ifsccode"  required name="farmerIFSCCode" placeholder="Your IFSC code.."> 
      </div>
    </div>
    <label>Documents Upload</label>
    <div class="row">
      <div class="col-25">
        <label for="aadharfile">Aadhaar</label>
      </div>
      <div class="col-75">
       <input type="file" required id="aadharfile" name="farmerAadhaarfile"> 
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="pan">PAN</label>
      </div>
      <div class="col-75">
       <input type="file" id="pan" required name="farmerPanfile" > 
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="certificate">Certificate</label>
      </div>
      <div class="col-75">
       <input type="file" id="certificate" required name="farmerCertificatefile"> 
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="pass">password</label>
      </div>
      <div class="col-75">
       <input type="password" required id="pass" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" name="password" placeholder="ex.Absc@12SX"> 
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="passw">confirm password</label>
      </div>
      <div class="col-75">
       <input type="password" required id="passw" name="confirmpassword" placeholder="ex.Absc@12SX"> 
      </div>
    </div>
    <div class="row">
      <input type="submit" value="Submit">
    </div>
  </form>
</div>
</div>
<script>
function validatePassword(){
	var password= document.getElementById("pass").value;
	var confirmPassword = document.getElementById("passw").value;

	if(password == confirmPassword)
	return true;
	else{
	alert("Password didn't match");
	return false;
	}

	}</script>
</body>
</html>