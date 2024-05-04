<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
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

	<%
		String id = request.getParameter("id");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("username");
		
	%>
	
	
	<form action="updatecus" method="post">
	<table>
		<tr>
			<td>Customer ID</td>
			<td><input type="text" name="cusid" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<td>First Name</td>
			<td><input type="text" name="fName" value="<%= fname %>"></td>
		</tr>
		<tr>
		<td>Last name</td>
		<td><input type="text" name="lname" value="<%= lname %>"></td>
	</tr>
		<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= email %>"></td>
	</tr>
	<tr>
		<td>Phone number</td>
		<td><input type="text" name="phone" value="<%= phone %>"></td>
	</tr>
	<tr>
		<td>User name</td>
		<td><input type="text" name="uname" value="<%= userName %>"></td>
	</tr>
			
	</table>
	<br>
	<input type="submit" name="submit" value="Update My Data">
	</form>
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