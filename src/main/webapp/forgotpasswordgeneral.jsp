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

body {
  /* The image used */
  /* background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQmBzZMZtm0TGbEKnQwOoVPANmlme9LhZTT-amIUDvMTwGQUIoP"); */
background-image: url("images/close-up-photo-of-berries-1379636 (1).jpg");
		  /* Full height */

height:100%;
  background-position: center;
  background-repeat:no-repeat;
  background-size:cover;
}
input{
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
.row{
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

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
width:50%;
top:30%;
left:27%;
position:absolute;
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
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
</style>
</head>
<body >
<img style="background-size: cover; height: 100%; width:100%; background-position: center;
  background-repeat:no-repeat;" src="images/hay-field-under-clear-sky-2389122.jpg">
<div>
 <div class="container">
  <form action="forgotpasswordgeneral.rsvp" method="post">
    <div class="row">
      <div class="col-25">
        <label for="email">Email</label>
      </div>
      <div class="col-75">
        <input type="email" id="email" name="email" placeholder="Your email..">
      </div>
    </div>
    <div class="row">
      <input type="submit" value="Submit">
    </div>
  </form>
</div>
</div>
</body>
</html>