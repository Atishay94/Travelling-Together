<%-- 
    Document   : registerShow
    Created on : 13-Dec-2023, 9:00:29 pm
    Author     : LENOVO
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/flightcss.css">
        <title>Register Data</title>
    </head>
    <body>
          <div class="banner">
        <video src="../../files/bgvid.mp4" type="video/mp4" autoplay muted loop></video>
    
    <!-- Header -->

    <div class="content" id="home"> 
        <nav>
            <img src="../assets/tripwithfriends.png" class="logo" alt="Logo" title="Admin">
            
<!--            <ul class="navbar">
                <li>
                    <a href="../admin/indexAdmin.html">Home</a>
                    <a href="../../about.html">About Us</a>
                    <a href="#locations">Locations</a>
                    <a href="#package">Packages</a>
                    <a href="places.html">Places</a>
                    <a href="../user/signupShow.jsp">SignUp History</a>
                    <a href="../registerShow.jsp">Register History</a>
                </li>
            </ul>-->

            <h1><span style="font-family: unset; color: #101010; align-items: center">User Register Data</span></h1>
        </nav>
 
        
            <h2>TRAVEL TOGETHER</h2>
            <h2>Admin</h2>
            
         <center>
        <h1><span style="font-family: unset; color: #4c4c4c">User Register Data</span></h1>
<!--        <form action="../../../src/java/servlet/UserSignupData.java" method="post"></form>
        <input type="submit" value="Get All Record">-->
        
<table border="1" >
    <tr style="color: #777; font-family: sans-serif">
                <th>Name</th>
                <th>Email or Username</th>
                <th>Number</th>
                <th>Age</th>
                <th>Gender</th>
                <th>Departure</th>
                <th>Return Time</th>
                <th>Destination</th>
                <th>Package</th>
            </tr>
            <%
                try {
                          Class.forName("com.mysql.jdbc.Driver");
                          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/traveltogether","root","atishay");
                          Statement st = con.createStatement();
                          
                          String str = "select * from registers";
                          
                          ResultSet rs  = st.executeQuery(str);
                          
                          while(rs.next()){
                          %>
                          <tr>
                              <td><%=rs.getString("Name")%></td>
                              <td><%=rs.getString("Email")%></td>
                              <td><%=rs.getString("Number")%></td>
                              <td><%=rs.getString("Age")%></td>
                              <td><%=rs.getString("Gender")%></td>
                              <td><%=rs.getString("Departure")%></td>
                              <td><%=rs.getString("TimeReturn")%></td>
                              <td><%=rs.getString("Destination")%></td>
                              <td><%=rs.getString("Package")%></td>
                          </tr>
                          <%}
                          
                
                    } catch (Exception e) {
                    
                  
                    }
              %>
        </table>
        
    </center>
        
           
        
        </div>
    </div>
    </body>
</html>
