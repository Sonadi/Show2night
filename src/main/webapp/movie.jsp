<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Movies</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  <link rel="stylesheet" href = "css/movie.css">
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
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
        <section class="movies" id="movies">
            <h2 class="heading">Opening This Week</h2>
            <div class="movies-container">
                <div class="box">
                  <div class="box-img">
                    <img src="img/m1.jpg" alt="">
                  </div>
                <h3>Venom</h3>
                <span>120 min | Action</span>     
            </div>
            <div class="box">
                <div class="box-img">
                  <img src="img/m2.jpg" alt="">
                </div>
              <h3>Dunkirk</h3>
              <span>120 min | Adventure</span>     
          </div>
          <div class="box">
            <div class="box-img">
              <img src="img/m3.jpg" alt="">
            </div>
          <h3>Batman Vs Superman</h3>
          <span>120 min | Thriller</span>     
      </div>
      <div class="box">
        <div class="box-img">
          <img src="img/m4.jpg" alt="">
        </div>
      <h3>John Wick</h3>
      <span>120 min | Adventure</span>     
  </div>
  <div class="box">
    <div class="box-img">
      <img src="img/m5.jpg" alt="">
    </div>
  <h3>Aquaman</h3>
  <span>120 min | Action</span>     
</div>
<div class="box">
    <div class="box-img">
      <img src="img/m6.jpg" alt="">
    </div>
  <h3>Black Panther</h3>
  <span>120 min | Thriller</span>     
</div>
<div class="box">
    <div class="box-img">
      <img src="img/m7.jpg" alt="">
    </div>
  <h3>Thor</h3>
  <span>120 min | Adventure</span>     
</div>
<div class="box">
    <div class="box-img">
      <img src="img/m8.png" alt="">
    </div>
  <h3>Bumblebee</h3>
  <span>120 min | Thriller</span>     
</div>
<div class="box">
    <div class="box-img">
      <img src="img/m9.jpg" alt="">
    </div>
  <h3>Mortal Engines</h3>
  <span>120 min | Action</span>     
</div>
<div class="box">
    <div class="box-img">
      <img src="img/m10.jpg" alt="">
    </div>
  <h3>UnderWorld Blood Wars</h3>
  <span>120 min | Action</span>     
</div>
            </div>
        </section>  
        <section class="coming" id="coming">
            <h2 class="heading">Coming Soon</h2> 
            <div class="coming-container-swiper">
                
                <div class="swiper-side box">
                    <div class="box-img">
                      <img src="img/coming1.jpg" alt="">
                    </div>
                  <h3>Johnny English</h3>
                  <span>120 min | comedy</span>     
              </div>
              <div class="swiper-side box">
                  <div class="box-img">
                    <img src="img/coming2.jpg" alt="">
                  </div>
                <h3>Warcraft</h3>
                <span>120 min | Adventure</span>     
            </div>
            <div class="swiper-side box">
              <div class="box-img">
                <img src="img/coming3.jpg" alt="">
              </div>
            <h3>Rampage</h3>
            <span>120 min | Action</span>     
        </div>
        <div class="swiper-side box">
          <div class="box-img">
            <img src="img/coming4.jpg" alt="">
          </div>
        <h3>The Iron Lady</h3>
        <span>120 min | Adventure</span>     
    </div>
    <div class="swiper-side box">
      <div class="box-img">
        <img src="img/coming5.jpg" alt="">
      </div>
    <h3>Justice League</h3>
    <span>120 min | Action</span>     
  </div>
  <div class="swiper-side box">
      <div class="box-img">
        <img src="img/coming6.jpeg" alt="">
      </div>
    <h3>Doctor Stranger</h3>
    <span>120 min | Adventure</span>     
  </div>
  <div class="swiper-side box">
      <div class="box-img">
        <img src="img/coming7.jpg" alt="">
      </div>
    <h3>Caption marvel</h3>
    <span>120 min | Adventure</span>     
  </div>
  <div class="swiper-side box">
      <div class="box-img">
        <img src="img/coming8.jpg" alt="">
      </div>
    <h3>Black Widow</h3>
    <span>120 min | Thriller</span>     
  </div>
  <div class="swiper-side box">
      <div class="box-img">
        <img src="img/coming9.jpg" alt="">
      </div>
    <h3>Ant Man</h3>
    <span>120 min | Action</span>     
  </div>
  <div class="swiper-side box">
      <div class="box-img">
        <img src="img/coming10.jpg" alt="">
      </div>
    <h3>Gardians of the galaxy</h3>
    <span>120 min | Adventure</span>     
  </div>
  </div>
        
        </section>               


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