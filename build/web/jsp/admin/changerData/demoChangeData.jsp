<%-- 
    Document   : demoChangeData
    Created on : 08-Feb-2024, 11:19:58 pm
    Author     : LENOVO
--%>

<%@page import = "java.lang.Long" %>
<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.DriverManager" %>
<%@page import = "java.sql.PreparedStatement" %>

<%
     String button1 = request.getParameter("btn1");
        String button2 = request.getParameter("btn2");
        
        try {
//        String driver = "com.mysql.jdbc.Driver";
//        String url="jdbc:mysql://localhost:3306/traveltogether"+"root"+"atishay";
        
        
        if(button1.equals("Submit") && button1!=null){
                String img1 = request.getParameter("image1");
                String img2 = request.getParameter("image2");
                String img3 = request.getParameter("image3");
                String img4 = request.getParameter("image4");
                String img5 = request.getParameter("image5");
                String img6 = request.getParameter("image6");
                String img7 = request.getParameter("image7");
                String img8 = request.getParameter("image8");
                
                Class.forName("com.mysql.jdbc.Driver");
//                Class.forName(driver);
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/traveltogether", "root", "atishay");
//                Connection con = DriverManager.getConnection(url);
                PreparedStatement ps = con.prepareStatement("insert into changelocation values(?,?,?,?,?,?,?,?)");
                ps.setString(1,img1);
                ps.setString(2,img2);
                ps.setString(3,img3);
                ps.setString(4,img4);
                ps.setString(5,img5);
                ps.setString(6,img6);
                ps.setString(7,img7);
                ps.setString(8,img8);
            
            ps.executeUpdate();
            response.sendRedirect("../../../index.jsp");
    }else{
        response.sendRedirect("dataChanger.html");
    }
//    if(button2.equals("Submit") && button2!=null){
//        
//    }

            } catch (Exception e) {
            e.printStackTrace();
            }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Data</title>
    </head>
    <body>
        <h1>Change Location</h1>
        <form action="" method="post" name="btn">
        <h2>Location Image</h2>
        <font color="blue">Kashmir </font>
        <input type="file" id="fileInput" name="image1"accept="image/*"><br><br>
        <font color="blue">Turkey </font>
        <input type="file" id="fileInput" name="image2"accept="image/*"><br><br>
        <font color="blue">France </font>
        <input type="file" id="fileInput" name="image3"accept="image/*"><br><br>
        <font color="blue">Indonesia </font>
        <input type="file" id="fileInput" name="image4"accept="image/*"><br><br>
        <font color="blue">Dubai </font>
        <input type="file" id="fileInput" name="image5"accept="image/*"><br><br>
        <font color="blue">Switzerland </font>
        <input type="file" id="fileInput" name="image6"accept="image/*"><br><br>
        <font color="blue">Andaman </font>
        <input type="file" id="fileInput" name="image7"accept="image/*"><br><br>
        <font color="blue">Italy </font>
        <input type="file" id="fileInput" name="image8"accept="image/*"><br><br>
        <input type="submit" value="Submit" class="submitbtn" name="btn1" onclick="check()"  >
        <!--onclick="check(),validateform()-->
        
        </form>
        <script>
            let file= document.getElementById('fileInput');
            let submit = document.querySelector('.submitbtn');
            function check(){
                if(file==submit){
                alert("Are you sure for store these images!");
            }else{
                alert('Somthing wrong!');
            }
        </script>
    </body>
</html>
