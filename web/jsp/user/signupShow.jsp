
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile Data </title>
        <link rel="stylesheet" type="text/css" href="../../css/flightcss.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Paytone+One&family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet"
    href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    </head>
    <body>
        
    <center>
        <h1><span style="font-family: unset; color: #4c4c4c">User Profile Data</span></h1>
<!--        <form action="../../../src/java/servlet/UserSignupData.java" method="post"></form>
        <input type="submit" value="Get All Record">-->
        
<table border="1" >
    <tr style="color: #777; font-family: sans-serif">
                <th>Email or Username</th>
                <th>Password</th>
                <th>Name</th>
                <th>Date</th>
                <th>About User</th>
            </tr>
            <%
                try {
                          Class.forName("com.mysql.jdbc.Driver");
                          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/traveltogether","root","atishay");
                          Statement st = con.createStatement();
                          
                          String str = "select * from usersignup";
                          
                          ResultSet rs  = st.executeQuery(str);
                          
                          while(rs.next()){
                          %>
                          <tr>
                              <td><%=rs.getString("Email")%></td>
                              <td><%=rs.getString("Password")%></td>
                              <td><%=rs.getString("Name")%></td>
                              <td><%=rs.getString("Date")%></td>
                              <td><%=rs.getString("Data")%></td>
                          </tr>
                          <%}
                          
                
                    } catch (Exception e) {
                    
                  
                    }
              %>
        </table>
        
        <table border="1" >
    <tr style="color: #777; font-family: sans-serif">
                <th>kashmir1</th>
                <th>kashmir2</th>
                <th>kashmir3</th>
                <th>kashmir4</th>
                <th>kashmir5</th>
                <th>kashmir6</th>
                <th>kashmir7</th>
                <th>kashmir8</th>
            </tr>
            <%
                try {
                          Class.forName("com.mysql.jdbc.Driver");
                          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/traveltogether","root","atishay");
                          Statement st = con.createStatement();
                          
                          String str = "select * from changelocation";
                          
                          ResultSet rs  = st.executeQuery(str);
                          
                          while(rs.next()){
                          %>
                              <img src="<%=rs.getString("image1")%>" alt=""/>
                          <tr>
                              <td><%=rs.getString("image1")%></td>
                              <td><%=rs.getString("image2")%></td>
                              <td><%=rs.getString("image3")%></td>
                              <td><%=rs.getString("image4")%></td>
                              <td><%=rs.getString("image5")%></td>
                              <td><%=rs.getString("image6")%></td>
                              <td><%=rs.getString("image7")%></td>
                              <td><%=rs.getString("image8")%></td>
                          </tr>
                          <%}
                          
                
                    } catch (Exception e) {
                    
                  
                    }
              %>
        </table>
        
        
        
    </center>
    
            <!-- Footer -->
<!--
<section class="footer">
    <div class="foot">
        <div class="footer-content">
            
            <div class="footlinks">
                <h4>Quick Links</h4>
                <ul>
                    <li><a href="../register.jsp">Register</a></li>
                    <li><a href="../../about.html">About Us</a></li>
                    <li><a href="../../contact.html">Contact Us</a></li>
                    <li><a href="../admin/adminLogin.jsp">Admin Login</a></li>
                </ul>
            </div>

            <div class="footlinks">
                <h4>Connect</h4>
                <div class="social">
                    <a href="https://www.facebook.com/atishay.jain.94801116?mibextid=ZbWKwLr" target="_blank"><i class='bx bxl-facebook'></i></a>
                    <a href="https://instagram.com/atishay94?igshid=NzZlODBkYWE4Ng==" target="_blank"><i class='bx bxl-instagram' ></i></a>
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
</section>-->
    
    
    </body>
</html>
