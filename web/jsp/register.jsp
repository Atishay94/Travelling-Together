<%@page import="jdk.javadoc.internal.doclets.formats.html.markup.Script"%>
<%@page import = "java.lang.Long" %>
<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.DriverManager" %>
<%@page import = "java.sql.PreparedStatement" %>

<%
   String button1=request.getParameter("btn");
    int RESULT=0;
    int COUNT=0;
    if(button1!=null && button1.equals("Submit"))
    {
    try{
            String name = request.getParameter("Name");
            String id=request.getParameter("Email");
            
            String phone = request.getParameter("Number");
            String age = request.getParameter("Age");
            String gen = request.getParameter("Gender");
            String dtime = request.getParameter("Departure");
            String time1 = request.getParameter("TimeReturn");
            String td = request.getParameter("Destination");
            String pac = request.getParameter("Package");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/traveltogether", "root", "atishay");
            
            PreparedStatement ps=con.prepareStatement("insert into registers values(?,?,?,?,?,?,?,?,?)");
            
            ps.setString(1, name);
            ps.setString(2, id);
            ps.setString(3, phone);
            ps.setString(4, age);
            ps.setString(5, gen);
            ps.setString(6, dtime);
            ps.setString(7, time1);
            ps.setString(8, td);
            ps.setString(9, pac);
            
            ps.executeUpdate();
            session.setAttribute("CALL", id);
//            response.sendRedirect("../places.html");
            
            
    
}catch(Exception e){
    e.printStackTrace();
    }
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Here</title>
    <link rel="icon" href="../assets/tripwithfriends.png">
    <link rel="stylesheet" type="text/css" href="../css/flightcss.css">
    <link rel="stylesheet"  href="../app_CSC_api.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Paytone+One&family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet"
    href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
</head>
<script>
        function check(){
            if(btn.Name.value==0){
                alert("Name field cannot be empty");
            }
            if(btn.Email.value==0){
                alert("user-id field cannot be empty");
            }
            
            if(btn.Number.value==0){
                alert("Number cannot be empty");
            }
            if(btn.Destination.value==0){
                alert("Travel Destination cannot be empty");
            }
        }
         function validateform(){ 
        var tel=document.getElementById("phonenum").value;  
        const check = document.getElementById("right").value;
        const gender = document.getElementById("gd").value;
        const destination = document.getElementById("td").value;

        if(tel.length<10){  
            alert("Phone number must be of atleast 10 digits!");  
            return false;  
        } else if(isNaN(tel)){
            alert("Phone number should not include character!");
            return false;
        }
        else if(!check){
            alert("Please check the term and Condition");
            return false;
        }
        else if(!gender){
            alert("Please check the gender");
            return false;
        }
        else if(!destination){
            alert("Please check your Destination address");
            return false;
        }
        return true;
}  
    </script> 
<body class="register-body">

    <nav>
        <img src="../assets/tripwithfriends.png" class="logo" alt="Logo" title="Travelling_Together">

        <ul class="navbar">
            <li>
                <a href="../index.html">Home</a>
                <a href="admin/adminLogin.jsp">Admin Login</a>
                <a href="../about.html">About Us</a>
                <a href="../contact.html">Contact Us</a>
                <a href="../places.html">Places</a>
            </li>
        </ul>
    </nav>

    <section class="registration">
        <div class="register-form">
            <h1>Register <span>Here</span></h1>
            <form action="" method="post" name="btn">

            <input type="text" name="Name" placeholder="Name" id="name" required>
            <input type="email" name="Email" placeholder="Email-Id" id="" required>
            <input type="tel" name="Number" placeholder="Phone No." id="phonenum" required>
            <input type="number" name="Age" placeholder="Age" id="" required>
            <h4>Gender</h4>
            <input type="radio" name="Gender" id="gd" value="Male" required> Male &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            <input type="radio" name="Gender" id="gd" value="Female"> Female
            <h4>Departure</h4>
            <input type="datetime-local" name="Departure" id="" required>
            <h4>Return</h4>
            <input type="datetime-local" name="TimeReturn" id="" required>
            <h4>Travel Destination</h4>
            <h4><label >Choose your Destination:</label> </h4>
<!--            <select name="Destination" id="td" style="background-color: black; color: white"> 
        <option value="Manali">Manali</option> 
        <option value="Goa">Goa</option> 
        <option value="Delhi">Delhi</option> 
        <option value="Jaipur">Jaipur</option> 
        <option value="Kerala">Kerala</option> 
        <option value="Darjeeling">Darjeeling</option> 
        <option value="Australia">Australia</option> 
        <option value="Italy">Italy</option> 
        <option value="Switzerland">Switzerland</option> 
    </select>-->

            <div class="container">

        <h3>Select Country State and City</h3>

        <div class="select_option">
            <select class="form-select country"  aria-label="Default select example" onchange="loadStates()">
                <option name="Destination" id="td" selected >Select Country</option>
            </select>
            <select class="form-select state"  aria-label="Default select example" onchange="loadCities()">
                <option name="Destination" id="td" selected>Select State</option>
            </select>
            <select class="form-select city"    aria-label="Default select example">
                <option name="Destination" id="td" selected>Select City</option>
            </select>
        </div>

    </div>
<!--            <input type="checkbox" name="Destination" id="td"> Kashmir &nbsp; &nbsp; &nbsp;
            <input type="checkbox" name="Destination" id="td"> Istanbul &nbsp; &nbsp; &nbsp;
            <input type="checkbox" name="Destination" id="td"> Paris &nbsp; &nbsp; &nbsp;
            <input type="checkbox" name="Destination" id="td"> Bali &nbsp; &nbsp; &nbsp;
            <input type="checkbox" name="Destination" id="td"> Dubai &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <input type="checkbox" name="Destination" id="td"> Geneva &nbsp; &nbsp; &nbsp; 
            <input type="checkbox" name="Destination" id="td"> Port Blair &nbsp; &nbsp; &nbsp;
            <input type="checkbox" name="Destination" id="td"> Rome &nbsp; &nbsp; &nbsp;-->
            <br> <br>
            <h4>Package</h4>
            <input type="radio" name="Package" id="loc1" value="Bronze" required> Bronze &nbsp; &nbsp; &nbsp;
            <input type="radio" name="Package" id="loc1" value="Silver"> Silver &nbsp; &nbsp; &nbsp;
            <input type="radio" name="Package" id="loc1" value="Gold"> Gold &nbsp; &nbsp; &nbsp;
            <input type="radio" name="Package" id="loc1" value="Platinum"> Platinum &nbsp; &nbsp; &nbsp;
            <br> <br> 
            <input type="checkbox" name="t&c" id="right" checked required> I accept the Terms & Conditions.
            <br> <br> 
            <input type="submit" value="Submit" class="submitbtn" name="btn" onclick="check(),validateform() ">

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
                    <li><a href="adminLogin.jsp">Admin Login</a></li>
                    <li><a href="../jsp/register.jsp">Register</a></li>
                    <li><a href="../about.html">About Us</a></li>
                    <li><a href="../contact.html">Contact Us</a></li>
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
        <p>Travelling Together<br>Website developed by: Atishay Jain</p>
    </div>
</section>

<script src="../app_CSC_api.js"></script>

</body>
</html>

