<%-- 
    Document   : index
    Created on : 07-Feb-2024, 10:22:03 pm
    Author     : LENOVO
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%> 


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travelling Together</title>
    <link rel="icon" href="assets/tripwithfriends.png">
    <link rel="stylesheet" type="text/css" href="css/flightcss.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Paytone+One&family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet"
    href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <style>
        .dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
    </style>
</head>
<body>

<!-- Background Video & Header -->

    <div class="banner">
        <video src="files/bgvid.mp4" type="video/mp4" autoplay muted loop></video>
    
    <!-- Header -->

    <div class="content" id="home"> 
        <nav>
            <img src="./assets/tripwithfriends.png" class="logo" alt="Logo" title="Travelling  Together">
            
            <ul class="navbar">
                <li>
                    <a href="index.html">Home</a>
                    <a href="./about.html">About Us</a>
                    <a href="#locations">Locations</a>
                    <a href="#package">Packages</a>
                    <a href="places.html">Places</a>
                    <a href="jsp/user/accountSetting.jsp">Account Setting</a>
<!--                    <div class="dropdown">
    <button class="dropbtn">Dropdown 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">Link 1</a>
      <a href="#">Link 2</a>
      <a href="#">Link 3</a>
    </div>
  </div> -->
                    <!--<a href="contact.html">Contact Us</a>-->
                </li>
            </ul>
        </nav>
 
        <div class="title">
            <h1>TRAVEL TOGETHER</h1>
            <p>Plan your trip with us and travel around the world with the most affordable packages!</p>
            <a href="jsp/register.jsp" class="button">Register Now!</a><br>
            <a href="jsp/user/userLogin.jsp" class="button">Login</a>
        </div>
        </div>
    </div>

<!--<a href="jsp/user/userLogin.jsp" id="redirect-link">

  <div id="login" class="hidden">
     Your login page content goes here 
    <p>Login Page</p>
  </div></a>-->
<!-- Services -->

<section class="container">
    <div class="text">
        <h2>We have the best services available for you!</h2>
    </div>
    <div class="rowitems">
        <div class="container-box">
        <div class="container-image">
           <img src="./files/1a.jpg" alt="Flight Services">
        </div>
            <h4>Flight Services</h4>
            <p>Arrival and Departure</p>
        </div>
    
        <div class="container-box">
        <div class="container-image">
           <img src="./files/2a.jpg" alt="Food Services">
        </div>
            <h4>Food Services</h4>
            <p>Catering</p>
        </div>

        <div class="container-box">
        <div class="container-image">
            <img src="./files/3a.jpg" alt="Travel Services">
        </div>
            <h4>Travel Services</h4>
            <p>Pick-up/drop</p>
        </div>

        <div class="container-box">
        <div class="container-image">
            <img src="./files/4a.jpg" alt="Hotel Services">
        </div>
            <h4>Hotel Services</h4>
            <p>Check-in/out</p>
        </div>

    </div>

    </div>

</section>

<!-- Locations -->
<%
                       try {
                          Class.forName("com.mysql.jdbc.Driver");
                          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/traveltogether","root","atishay");
                          Statement st = con.createStatement();
                          
                          String str = "select * from changelocation";
                          
                          ResultSet rs  = st.executeQuery(str);
                          
                          while(rs.next()){
%>
<section class="locations" id="locations">
    <div class="package-title">
        <h2>Locations</h2>
    </div>
    <form action="action">
    <div class="location-content">
        
        <a href="./locations.html#kashmir" target="_blank"><div class="col-content">
                <img src="./files/l1.jpg" alt="">
            <h5>India</h5>
            <p>Kashmir</p>
        </div></a>

       

        <a href="./locations.html#istanbul" target="_blank"><div class="col-content">
            <img src="./files/l2.jpg" alt="">
            <h5>Turkey</h5>
            <p>Istanbul</p>
        </div></a>

        <a href="./locations.html#paris" target="_blank"><div class="col-content">
            <img src="./files/l3.jpg" alt="">
            <h5>France</h5>
            <p>Paris</p>
        </div></a>

        <a href="./locations.html#bali" target="_blank"><div class="col-content">
            <img src="./files/l4.jpg" alt="">
            <h5>Indonesia</h5>
            <p>Bali</p>
        </div></a>

        <a href="./locations.html#dubai" target="_blank"><div class="col-content">
            <img src="./files/l5.jpg" alt="">
            <h5>United Arab Emirates</h5>
            <p>Dubai</p>
        </div></a>

        <a href="./locations.html#geneva" target="_blank"><div class="col-content">
            <img src="./files/l6.jpg" alt="">
            <h5>Switzerland</h5>
            <p>Geneva</p>
        </div></a>

        <a href="./locations.html#port-blair" target="_blank"><div class="col-content">
            <img src="./files/l7.jpg" alt="">
            <h5>Andaman & Nicobar</h5>
            <p>Port Blair</p>
        </div></a>

        <a href="./locations.html#rome" target="_blank"><div class="col-content">
            <img src="./files/l8.jpg" alt="">
            <h5>Italy</h5>
            <p>Rome</p>
        </div></a>
</form>
    </div>
</section>
<%}
                          
                
                    } catch (Exception e) {
                    
                  
                    }
              %>

<!-- Packages -->
<section class="package" id="package">
<%
                       try {
                          Class.forName("com.mysql.jdbc.Driver");
                          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/traveltogether","root","atishay");
                          Statement st = con.createStatement();
                          
                          String str = "select * from package";
                          
                          ResultSet rs  = st.executeQuery(str);
                          
                          while(rs.next()){
%>
    <div class="package-title">
        <h2>Packages</h2>
    </div>

    <a href="jsp/register.jsp">
        <div class="package-content">
        
        <a href="jsp/register.jsp">
            <div class="box">
            <div class="image">
                <img src="./files/p1.jpg" alt="">
                <h3>Rs.<%=rs.getString("bronze")%>/-</h3>
            </div>
        
            <div class="dest-content">
            <div class="location">
                <h4>Bronze</h4>
                <ul class="pac-details">
                    <li>2 Star Hotel</li>
                    <li>5 Nights Stay</li>
                    <li>Free photo Session</li>
                    <li>Friendly Tour Guide</li>
                    <li>24/7 Customer Help Center</li>
                </ul>
            </div>
        </div>
        </div>
        </a>
        
        <a href="jsp/register.jsp">
            <div class="box">
            <div class="image">
                <img src="./files/p2.jpg" alt="">
                <h3>Rs.<%=rs.getString("silver")%>/-</h3>
            </div>
        
        <div class="dest-content">
            <div class="location">
                <h4>Silver</h4>
                <ul class="pac-details">
                    <li>3 Star Hotel</li>
                    <li>7 Nights Stay</li>
                    <li>Free photo Session</li>
                    <li>Friendly Tour Guide</li>
                    <li>24/7 Customer Help Center</li>
                </ul>
            </div>
        </div>
        </div>
        </a>

       <a href="jsp/register.jsp"> 
           <div class="box">
            <div class="image">
                <img src="./files/p3.jpg" alt="">
                <h3>Rs.<%=rs.getString("gold")%>/-</h3>
            </div>
        
        <div class="dest-content">
            <div class="location">
                <h4>Gold</h4>
                <ul class="pac-details">
                    <li>4 Star Hotel</li>
                    <li>10 Nights Stay</li>
                    <li>Breakfast and Dinner</li>
                    <li>Free photo Session</li>
                    <li>Friendly Tour Guide</li>
                    <li>24/7 Customer Help Center</li>
                </ul>
            </div>
        </div>
           </div>
       </a>

        <a href="jsp/register.jsp">
            <div class="box">
            <div class="image">
                <img src="./files/p4.jpg" alt="">
                <h3>Rs.<%=rs.getString("platinum")%>/-</h3>
            </div>
        
        <div class="dest-content">
            <div class="location">
                <h4>Platinum</h4>
                <ul class="pac-details">
                    <li>5 Star Hotel</li>
                    <li>14 Nights Stay</li>
                    <li>Breakfast, Lunch and Dinner</li>
                    <li>Bornfire</li>
                    <li>Free photo Session</li>
                    <li>Friendly Tour Guide</li>
                    <li>24/7 Customer Help Center</li>
                </ul>
            </div>
        </div>
            </div>
        <!--</a>-->

        </div></a>

<%}
                          
                
                    } catch (Exception e) {
                    
                  
                    }
              %>
</section>
<!-- Newsletter -->

<section class="newsletter">
    <div class="newstext">
        <h2>Newsletter</h2>
        <p>Subscribe to get offers and latest<br>updates every week!</p>
    </div>

    <div class="send">
        <form action="jsp/user/subscribe.jsp">
            <input type="email" name="emailid" placeholder="E-mail" required>
            <input type="submit" value="Subscribe">
        </form>
    </div>

</section>

<!-- Footer -->

<section class="footer">
    <div class="foot">
        <div class="footer-content">
            
            <div class="footlinks">
                <h4>Quick Links</h4>
                <ul>
                    <li><a href="jsp/register.jsp">Register</a></li>
                    <li><a href="./about.html">About Us</a></li>
                    <li><a href="./contact.html">Contact Us</a></li>
                    <li><a href="jsp/admin/adminLogin.jsp">Admin Login</a></li>
                </ul>
            </div>

            <div class="footlinks">
                <h4>Connect</h4>
                <div class="social">
                    <a href="https://www.facebook.com/atishay.jain.94801116?mibextid=ZbWKwL" target="_blank"><i class='bx bxl-facebook'></i></a>
                    <a href="https://instagram.com/atishay94?igshid=NzZlODBkYWE4Ng==1" target="_blank"><i class='bx bxl-instagram' ></i></a>
                    <a href="#" target="_blank"><i class='bx bxl-twitter' ></i></a>
                    <a href="https://www.linkedin.com/in/atishay-jain-b0478a229?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app" target="_blank"><i class='bx bxl-linkedin' ></i></a>
                    <a href="#" target="_blank"><i class='bx bxl-youtube' ></i></a>
                    <a href="#" target="_blank"><i class='bx bxl-wordpress' ></i></a>
                    <a href="https://github.com/Atishay94" target="_blank"><i class='bx bxl-github'></i></a>
                </div>
            </div>
            
        </div>
    </div>

    <div class="end">
        <p>Travelling Togehter All Rights Reserved.<br>Website developed by: Atishay Jain, Diyvansh Jain, Ayush Jain</p>
    </div>
</section>


 
</body>
</html>