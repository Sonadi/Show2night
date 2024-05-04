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
                    <li><a href="ho">HOME</a></li>
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
        
        <form id="registrationForm" action="Customerinsert" method="post" onsubmit="return checkPasswords();">
        <h2 class ="title">Registration Form</h2>
<div class = "fo"><div class="form-group">
                <input type="text" class="input" id="firstName" name="firstName" placeholder="First Name"required>
                <span class="label">First Name</span>
            </div>
            <div class="form-group">
                <input type="text" class="input" id="lastName" name="lastName" placeholder="Last Name"required>
                <span class="label">Last Name</span>
            </div>
            <div class="form-group">
                <input type="email"  class="input"id="email" name="email" placeholder="Email"required>
                <span class="label">Email</span>
            </div>
            <div class="form-group">
                <input type="text" class="input" id="Phone" name="phone" placeholder="Phone">
                <span class="label">Phone</span>
            </div>
            <div class="form-group">
                <input type="text" class="input" id="city" name="city" placeholder="City">
                <span class="label">City</span>
            </div>
            <div class="form-group">
                <input type="text" class="input" id="userName" name="userName" required placeholder="User Name">
                <span class="label">User Name</span>
            </div>
            <div class="form-group">
                <input type="password"  class="input" id="password" name="password" required placeholder="Password">
                <span class="label">Password</span>
            </div>
            <div class="form-group">
                <input type="password" class="input" id="confirmPassword" name="confirmPassword" placeholder="Conform Password"required>
                <span class="label">Conform Password</span>
            </div></div>
            
            
            <div class="links">
          <label for="remember">
            <input type="checkbox" id="remember" />
            I have read and agree to the privacy policy*
          </label>
        </div>
             
           <a><button type="submit" name = "submit" class="bt" value="Login"onclick="check()">
          <span>Conform And Register</span>
        </button></a>
            
                
           
             <div class="text">
          Already have account ? <a href="log.jsp">Log In</a>
        </div>
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