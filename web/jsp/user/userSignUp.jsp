<%@page import="java.lang.String"%>
<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="java.lang.Long"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
    <%
      String button1=request.getParameter("btns");
    int RESULT=0;
    int COUNT=0;
    if(button1!=null && button1.equals("SaveChange"))
    {
//         
            String id=request.getParameter("UserName");
            
            String pass=request.getParameter("Password");
            
            String name = request.getParameter("Name");
            String date = request.getParameter("DOB");
            String data = request.getParameter("BIO");
            
            try{
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/traveltogether","root","atishay");

            PreparedStatement ps = con.prepareStatement("insert into usersignup values(?,?,?,?,?)");
            ps.setString(1,id);
            ps.setString(2,pass);
            ps.setString(3,name);
            ps.setString(4,date);
            ps.setString(5,data);
            
            ps.executeUpdate();
            session.setAttribute("CALL", id);
            session.setAttribute("CALL", pass);
            response.sendRedirect("../user/userLogin.jsp");
    }catch(Exception e){
    e.printStackTrace();
    }
}
%>

<%
//    String button1 = request.getParameter("btns");
//    int RESULT=0;
//    int COUNT=0;
//    
//    String driver = "com.mysql.jdbc.Driver";
//    String url = "jdbc:mysql://localhost:3306/traveltogether"+"root"+"atishay";
//    
//    
//    if(button1!=null && button1.equals("SaveChange")){
//        String username = request.getParameter("UserName");
//        
//        String pass = request.getParameter("Password");
//        String name = request.getParameter("Name");
//        String email = request.getParameter("");
//        String dob = request.getParameter("DOB");
//        String contactNo = request.getParameter("");
//        String country = request.getParameter("");
//        String bio = request.getParameter("BIO");
//        String website = request.getParameter("");
//        String twitter = request.getParameter("");
//        String fb = request.getParameter("");
//        String linkedin = request.getParameter("");
//        String insta = request.getParameter("");
//        
//        try {
//                Class.forName(driver);
//                
//                Connection con = DriverManager.getConnection(url);
//                
//                PreparedStatement ps = con.prepareStatement("inset into usersignupdata values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
//                ps.setString(1, username);
//                ps.setString(2, pass);
//                ps.setString(3, name);
//                ps.setString(4, email);
//                ps.setString(5, dob);
//                ps.setString(6, contactNo);
//                ps.setString(7, country);
//                ps.setString(8, bio);
//                ps.setString(9, website);
//                ps.setString(10, twitter);
//                ps.setString(11, fb);
//                ps.setString(12, linkedin);
//                ps.setString(13, insta);
//                
//                ps.executeUpdate();
//                response.sendRedirect("../../../index.jsp");        
//            } catch (Exception e) {
//            e.printStackTrace();
//            }
//    }

%>
           
            %>
            <!DOCTYPE html>
<html lang="en">
    <script>
        function check(){
            if(btn.Email.value==0){
                alert("user-id field cannot be empty");
            }
            
            if(btn.Password.value==0){
                alert("password cannot be empty");
            }
        }
    </script> 
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../css/styleUserSignUp.css">
</head>
<body>
    
    <div class="box">
        <span class="borderLine"></span>
        <form action="" method="post" name="btns">
            <h2>Sign in</h2>
            <div class="inputBox">
                <input type="text" id="email" required="required" name="UserName">
                <span>Username</span>
                <i></i>
            </div>
            <div class="inputBox">
                <input type="password" id="password" required="required" name="Password">
                <span>Password</span>
                <i></i>
            </div>
            <div class="inputBox">
                <input type="text" id="name" required="required" name="Name">
                <span>Name</span>
                <i></i>
            </div>
            <div class="inputBox">
                <input type="date" id="date1" required="required" name="DOB">
                <span>Date of Birth</span>
                <i></i>
            </div>
            <div class="inputBox">
                <input type="text" id="data1" required="required" name="BIO">
                <span>About Yourself (BIO)</span>
                <i></i>
            </div>
            <div class="links">
                <a href="#">Forgot Password</a>
                <a href="../user/userLogin.jsp">Login</a>
                <a href="../user/userLogin.jsp">
                    <%
    if(button1!=null && RESULT==1){%>
    <font color="red">invalid user-id/password</font>
    <%}%>
                </a>
            </div>
            <input type="submit" value="SaveChange" name="btns" onclick="check()">
        </form>
    </div>
</body>
</html>