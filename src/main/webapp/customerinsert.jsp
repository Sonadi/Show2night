<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <!DOCTYPE html>
<html lang="en">
<head>
  <title>Responsive Footer Design</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
 <link rel="stylesheet" href = "css/template.css">
  <link rel="stylesheet" href = "css/Log1.css">
  <script src="js/ps.js"></script>
</head>
<body>
 <header class="header">
            <div class="logo">
                <h1>Show2<span>Night</span></h1>
            </div>
            <div class="nav-links">
                <ul>
                    <li><a href="home.jsp">HOME</a></li>
                    <li><a href="#">GENRE</a></li>
                    <li><a href="#">MOVIES</a></li>
                    <li><a href="#">TV SHOWS</a></li>
                </ul>
            </div>
             <div class="search-container">
     		 <input type="text" placeholder="Search...">
     		 <button type="submit">Search</button>
    </div>
            <a href="" class="btn">Profile</a>
        </header>

<nav class="body">  
  
    <div id = "div"> 
      <div class="container">
        <h2>Registration Form</h2>
        <form id="registrationForm" action="Customerinsert" method="post" onsubmit="return checkPasswords();">

            <div class="form-group">
                <input type="text" id="firstName" name="firstName" placeholder="First Name"required>
            </div>
            <div class="form-group">
                <input type="text" id="lastName" name="lastName" placeholder="Last Name"required>
            </div>
            <div class="form-group">
                <input type="email" id="email" name="email" placeholder="Email"required>
            </div>
            <div class="form-group">
                <input type="text" id="Phone" name="Phone" placeholder="Phone">
            </div>
            <div class="form-group">
                <input type="text" id="city" name="city" placeholder="City">
            </div>
            <div class="form-group">
                <input type="text" id="userName" name="userName" required placeholder="User Name">
            </div>
            <div class="form-group">
                <input type="password" id="password" name="password" required placeholder="Password">
            </div>
            <div class="form-group">
                <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Conform Password"required>
            </div>
            
            <div class="form-group">
              <p><input type="checkbox" id="privacyPolicy" name="privacyPolicy" required> I have read and agree to the privacy policy*</p>
            </div>
            <div class="form-group">
                <a href="sign in.html"><button type="submit" id="click" onclick="check()">Conform And Register</button></a>
            </div>
              <p id="privacy"> Have already an account?</p>
              <a href="log.jsp"><br><button id="click2" type="button">Login here</button></a>
        </form>
    </div>
      
    </div>
  </nav>

  <footer class="footer">
  	 <div class="containe">
  	 	<div class="row">
  	 		<div class="footer-col">
  	 			<h4>Company</h4>
  	 			<ul>
  	 				<li><a href="#">About us</a></li>
  	 				<li><a href="#">Contact us</a></li>
  	 				<li><a href="#">privacy policy</a></li>
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>get help</h4>
  	 			<ul>
  	 				<li><a href="#">FAQ</a></li>
  	 				<li><a href="#">Contact Support</a></li>
  	 				<li><a href="#">Help center</a></li>
  	 				<li><a href="#">Supported Devices</a></li>
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>Get The Apps</h4>
  	 			<ul>
  	 				<li><a href="#">iOS</a></li>
  	 				<li><a href="#">Android</a></li>
  	 				<li><a href="#">Roku</a></li>
  	 				<li><a href="#">Windows</a></li>
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>follow us</h4>
  	 			<div class="social-links">
  	 				<a href="#"><i class="fab fa-facebook-f"></i></a>
  	 				<a href="#"><i class="fab fa-twitter"></i></a>
  	 				<a href="#"><i class="fab fa-instagram"></i></a>
  	 				<a href="#"><i class="fab fa-linkedin-in"></i></a>
  	 			</div>
  	 		</div>
  	 	</div>
  	 </div>
  </footer>

</body>
</html>