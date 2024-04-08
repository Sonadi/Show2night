<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href = "css/template.css">
<link rel="stylesheet" href = "css/acc.css">
</head>
<body>
 <header class="header">
            <div class="logo">
                <h1>Show2<span>Night</span></h1>
            </div>
            <div class="nav-links">
                <ul>
                    <li><a href="#">HOME</a></li>
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

<div id = "ks">
<table>
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="username" value="${cus.username}"/>
	<c:set var="password" value="${cus.city}"/>
	<c:set var="password" value="${cus.lname}"/>
	<c:set var="password" value="${cus.fname}"/>
	
	 <tr>
            <td>Customer ID</td>
            <td>${cus.id}</td>
        </tr>
        <tr>
            <td>Customer First Name</td>
            <td>${cus.fname}</td>
        </tr>
        <tr>
            <td>Customer Last Name</td>
            <td>${cus.lname}</td>
        </tr>
        <tr>
            <td>Customer Email</td>
            <td>${cus.email}</td>
        </tr>
        <tr>
            <td>Customer Phone</td>
            <td>${cus.phone}</td>
        </tr>
        <tr>
            <td>Customer City</td>
            <td>${cus.city}</td>
        </tr>
        <tr>
            <td>Customer Username</td>
            <td>${cus.username}</td>
        </tr>
	</c:forEach>
	</table>
	
	<c:url value="updatecustomer.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="fname" value="${firstName}"/>
		<c:param name="lname" value="${lastName}"/>
		<c:param name="uname" value="${username}"/>
	</c:url>
	
<!-- Buttons wrapped in a container -->
<div class="button-container">
    <a href="${cusupdate}">
        <button type="button">Update My Data</button>
    </a>
    <a href="deletecus.java">
        <button type="button">Delete My Account</button>
    </a>
</div></div>

	

	
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