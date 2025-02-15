<!DOCTYPE html>
<html lang="en">
<head>
  <title>Responsive Footer Design</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  <link rel="stylesheet" href = "css/template.css">
  <link rel="stylesheet" href = "css/Log.css">
</head>
<body>
 <header class="header">
            <div class="logo">
                <h1>Show2<span>Night</span></h1>
            </div>
            <div class="nav-links">
                <ul>
                    <li><a href="home">HOME</a></li>
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
      <div class="login-container">
        <h2 id="h2">Login</h2>
        <form id="login-form" method="post" action="sign in.php">
      
            <input type="text" id="username" name="username" placeholder="Username" required>
            <br>
            <input type="password" id="password" name="password" placeholder="Password" required>
            <br>
            <label for="keep-me-logged-in" id="keep-me-logged-in">
            <input type="checkbox"  name="keep-me-logged-in"> Keep me logged in</label>
            <br>
            <a><button id="button" type="submit" name="submit">Login</button></a>
        </form>
        <p id="h2"><a href="forgot_password.html" >Forgot your password?</a></p><br>
        <p id="he">Don't have an account? <a href="sign up.html">Create an account</a></p>

    </div>
      
    </div>
  </nav>
  <footer class="footer">
  	 <div class="container">
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