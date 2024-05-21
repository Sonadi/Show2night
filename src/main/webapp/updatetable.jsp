<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Admin login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  
  <link rel="stylesheet" href = "css/updatetable.css">
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
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
                    <li><a href="movie.jsp">MOVIES</a></li>
                    <li><a href="#">TV SHOWS</a></li>
                </ul>
            </div>
             <div class="search-container">
     		 <input type="text" placeholder="Search...">
     		 <button type="submit">Search</button>
    </div>
             <form action="adminin.jsp" method = "post">
                  <button  type="Submit"class="btn">Admin Profile</button>
                  </form>
        </header>



<% String fname = request.getParameter("fname");
   String lname = request.getParameter("lname");
   String email = request.getParameter("email");
   String phone = request.getParameter("phone");
   String city = request.getParameter("city");
   String username = request.getParameter("username");
    %>
     <div class="edit-container">
     <div class="edit">
<form action="edituserserver" method="post">

<table>
  <tr>
  <td>username</td>
    <td>First Name</td>
    <td>Last Name</td>
    <td>Email</td>
    <td>City</td>
    <td>Phone Number</td>
  </tr>
  <tr>
   <td><input type="text" name="username" value="<%= username %>" readonly></td>
    <td><input type="text" name="fname" value="<%= fname %>"></td>
    <td><input type="text" name="lname" value="<%= lname %>"></td>
    <td><input type="text" name="email" value="<%= email %>"></td>
    <td><input type="text" name="city" value="<%= phone %>"></td>
    <td><input type="text" name="phone" value="<%= city %>"></td>
  </tr>
</table>



  <input type="submit" name="submit" ><br>
</form>
</div>
</div>
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
