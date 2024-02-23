<%@page import="java.sql.ResultSet"%>
<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="java.lang.Long"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%      
      String button1=request.getParameter("btn");
    int RESULT=0;
    int COUNT=0;
    if(button1!=null && button1.equals("Submit"))
    {   
             String id=request.getParameter("Email");

            String oldPass=request.getParameter("Password");
           
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/traveltogether", "root", "atishay");
            PreparedStatement ft=con.prepareStatement("select*from usersignup where Password=?");
//            ft.setString(1, id);
            ft.setString(1, oldPass);

            ResultSet rs=ft.executeQuery();
            if(rs.next())
            {
            String newPass = request.getParameter("NewPassword");
            String cPass = request.getParameter("ConfirmPassword");
                if(newPass.equals(cPass)){
                PreparedStatement ps= con.prepareStatement("update usersignup set NewPassword=? where Email=?");
                ps.setString(1, newPass);
                PreparedStatement st2=con.prepareStatement("selet* from usersignup where Password=? ");
                st2.setString(2, cPass);
                ps.executeUpdate(); 
        }

        session.setAttribute("CALL",id);
        session.setAttribute("CALL1",newPass);
        response.sendRedirect("../user/userLogin.jsp");
  
}
 else{
    RESULT=1;
    }
}
           
            %>
            <!DOCTYPE html>
<html lang="en">
    <script>
        function check(){
            if(btn.Email.value==0){
                alert("Email field cannot be empty");
            }
            if(btn.OldPassword.value==0){
                alert("Old Password field cannot be empty");
            }
            
            if(btn.NewPassword.value==0){
                alert("new password cannot be empty");
            }
            if(btn.ConfirmPassword.value==0){
                alert("new password cannot be empty");
            }
            if(btn.ConfirmPassword.value.equals (NewPassword)){
                alert("Confirm and New password doesn't match Please try again");
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
        <form action="" method="post" name="btn">
            <h2>Forgot Password</h2>
            <div class="inputBox">
                <input type="text" id="Email" required="required" name="Email">
                <span>Username or Email</span>
                <i></i>
            </div>
            <div class="inputBox">
                <input type="password" id="password" required="required" name="Password">
                <span>Old Password</span>
                <i></i>
            </div>
            <div class="inputBox">
                <input type="password" id="password" required="required" name="NewPassword">
                <span>New Password</span>
                <i></i>
            </div>
            <div class="inputBox">
                <input type="password" id="password" required="required" name="ConfirmPassword">
                <span>Confirm Password</span>
                <i></i>
            </div>
<!--            <div class="inputBox">
                <input type="date" id="date1" required="required" name="Date">
                <span>Date of Birth</span>
                <i></i>
            </div>-->
            <div class="inputBox">
                <input type="text" id="data1" required="required" >
                <span>Reason for Password changed</span>
                <i></i>
            </div>
            <div class="links">
                <a href="../user/userSignUp.jsp">Sign Up</a>
                <a href="../user/userLogin.jsp">Login</a>
                <a href="../user/userLogin.jsp">
                    <%
    if(button1!=null && RESULT==1){%>
    <font color="red">invalid user-id/password</font>
    <%}%>
                </a>
            </div>
            <input type="submit" value="Submit" name="btn" onclick="check()">
        </form>
    </div>
</body>
</html>