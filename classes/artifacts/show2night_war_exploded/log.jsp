<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login Form</title>
    <link rel="stylesheet" href = "css/template.css">
    <link rel="stylesheet" href = "css/Log.css">
   
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Round|Material+Icons+Sharp|Material+Icons+Two+Tone"
      rel="stylesheet"/>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@200;300;400;500;600;700;800&family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
      rel="stylesheet"/>
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
    <div id ="fix">
    <div class="center">
      <form action="Logcus"  method="post">
        <div class="title">Login</div>
        <span class="inputs">
          <span class="inputf">
            <input type="text" class="input" placeholder="User Name"  name="username">
            <span class="label">User Name</span>
            <span class="material-icons icon">email</span>
          </span>
          <span class="inputf">
            <input type="password" class="input" placeholder="Password" name="password">
            <span class="label">Password</span>
            <span class="material-icons icon">lock</span>
          </span>
        </span>
        <div class="links">
          <a href="#">Forgot Password</a>
          <label for="remember">
            <input type="checkbox" id="remember" />
            Remember Me
          </label>
        </div>
        <a><button type="submit" name = "submit" class="bt" value="Login">
          <span>Login</span>
        </button></a>
        <div class="text">
          New user? Create an account <a href="customerinsert.jsp">Register</a>
        </div>
      </form>
    </div>
  
    </div>
    
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
   <% 
        String error = request.getParameter("error");
        if (error != null && error.equals("invalid")) {
    %>
        <script>
            alert("Invalid username or password. Please try again.");
        </script>
    <% } %>
  </body>
</html>