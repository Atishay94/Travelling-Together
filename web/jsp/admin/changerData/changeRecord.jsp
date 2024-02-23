<%-- 
    Document   : changeRecord
    Created on : 08-Feb-2024, 2:28:37 pm
    Author     : LENOVO
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="jdk.javadoc.internal.doclets.formats.html.markup.Script"%>
<%@page import = "java.lang.Long" %>
<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.DriverManager" %>
<%@page import = "java.sql.PreparedStatement" %>

<%
  String button1 = request.getParameter("btn1");
  String button2 = request.getParameter("btn2");
        try {
  if(button1!=null && button1.equals("Submit"))
    {
                String pack1 = request.getParameter("package1");
                String pack2 = request.getParameter("package2");
                String pack3 = request.getParameter("package3");
                String pack4 = request.getParameter("package4");
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/traveltogether", "root", "atishay");
                PreparedStatement ps = con.prepareStatement("insert into package values(?,?,?,?)");
                ps.setString(1,pack1);
                ps.setString(2,pack2);
                ps.setString(3,pack3);
                ps.setString(4,pack4);
            
            ps.executeUpdate();
            response.sendRedirect("../../../index.jsp");
            }
            if(button2!=null && button2.equals("Update")){
                
                String pack = request.getParameter("package");

                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/traveltogether", "root", "atishay");
                
                PreparedStatement ps=con.prepareStatement("select* from package where bronze=?");
                ps.setString(1,pack);
                ResultSet rs = ps.executeQuery();
                if(rs.next()){
                            String pack1 = request.getParameter("package1");
                            String pack2 = request.getParameter("package2");
                            String pack3 = request.getParameter("package3");
                            String pack4 = request.getParameter("package4");
                            PreparedStatement st1=con.prepareStatement(" update package where package1=?,package2=?,package3=?,package4=?");
                            st1.setString(1,pack1);
                            st1.setString(2,pack2);
                            st1.setString(3,pack3);
                            st1.setString(4,pack4);

                            st1.executeUpdate();
            response.sendRedirect("../../../index.jsp");
    }
//else{
//    response.sendRedirect("dataChanger.html");
//}
            
    }
            
            else{
//    response.sendRedirect("dataChanger.html");
}
            
           
    } catch (Exception e) {
            }
    
    
  %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Change Package</title>
  <style>
    /* CSS styles for package cards */
    .package-card {
      border: 1px solid #ccc;
      border-radius: 5px;
      padding: 20px;
      margin: 10px;
      display: inline-block;
      cursor: pointer;
    }
    .package-card.selected {
      border-color: #007bff;
    }
    /* CSS styles for images */
    .package-image {
      width: 200px;
      height: 200px;
      margin-top: 10px;
    }
  </style>
</head>
<body>

  <h1>Change Records</h1>

  <!-- Package selection options -->
  <div class="package-card" id="basicPackage" onclick="selectPackage('basic')">
    <h2>Change Package</h2>
    <p>Includes basic features</p>
<!--    <<img src="../../../index.jsp" alt="alt"/>>-->
  </div>

  <div class="package-card" id="standardPackage" onclick="selectPackage('standard')">
    <h2>Change Location</h2>
    <p>Includes standard features</p>
  </div>

<!--  <div class="package-card" id="premiumPackage" onclick="selectPackage('premium')">
    <h2>Premium Package1</h2>
    <p>Includes premium features</p>
  </div>

  <!-- Image display -->
  <!--<img src="../indexAdmin.html" alt="Selected Package Image" id="packageImage" class="package-image">-->
  
  <table>
  <div class="package-card" id="" >
      <h2>Set Package</h2>
      <form action="" method="post" name="btn1">
     <input type="number" name="package1" placeholder="Bronze Package" id="pack" >
     <input type="number" name="package2" placeholder="Silver Package" id="pack" >
     <input type="number" name="package3" placeholder="Gold Package" id="pack" >
     <input type="number" name="package4" placeholder="Platinum Package" id="pack" >
     <input type="submit" value="Submit" class="submitbtn" name="btn1" onclick="check()">
      </form>
  </div>
      
       <div class="package-card" id="" >
      <h2>Update Package</h2>
      <form action="" method="post" name="btn2">
     <input type="number" name="package" placeholder="Old Brone Package" id="pack" >
     <input type="number" name="package1" placeholder="Bronze Package" id="pack" >
     <input type="number" name="package2" placeholder="Silver Package" id="pack" >
     <input type="number" name="package3" placeholder="Gold Package" id="pack" >
     <input type="number" name="package4" placeholder="Platinum Package" id="pack" >
     <input type="submit" value="Update" class="submitbtn" name="btn2" onclick="check()">
      </form>
  </div>
</table>
  <script>
      //check all fields empty or not 
      function check(){
//      if(btn.package1.value==0 || btn.package2.value==0 || btn.package3.value==0 || btn.package4.value==0){
            if(btn1.package1.valueOf(0)){
          alert("without fill data in any field you cannot submit it")''
      }else{
          alert("Submitted!");
      }
//          const package=document.getElementById("pack");
//          if(number.length>=3)
      }
    // Function to handle package selection
//    function selectPackage(packageType) {
//      // Remove 'selected' class from all package cards
//      var packageCards = document.querySelectorAll('.package-card');
//      packageCards.forEach(function(card) {
//        card.classList.remove('selected');
//      });
//
//      // Add 'selected' class to the clicked package card
//      var selectedCard = document.getElementById(packageType + 'Package');
//      selectedCard.classList.add('selected');
//
//      // Update image based on package selection
//      var imageSrc = '';
//      switch (packageType) {
//        case 'basic':
//          imageSrc = 'basic.jpg';
//          break;
//        case 'standard':
//          imageSrc = 'standard.jpg';
//          break;
//        case 'premium':
//          imageSrc = 'premium.jpg';
//          break;
//        default:
//          break;
//      }
////      document.getElementById('packageImage').src = imageSrc;
//    }
  </script>

</body>
</html>

