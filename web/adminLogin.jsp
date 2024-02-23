<%--<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%
    String button1=request.getParameter("btn");
    int RESULT=0;
    int COUNT=0;
    if(button1!=null && button1.equals("Submit"))
    {
    
String userid=request.getParameter("useridvalue");
String password=request.getParameter("passvalue");
//String firstname=request.getParameter("firstnameval");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "atishay");
PreparedStatement ft=con.prepareStatement("select*from teachersignup where EmailId=? and Password=?");

ft.setString(1, userid);
ft.setString(2, password);

ResultSet rs=ft.executeQuery();
if(rs.next()){
session.setAttribute("CALL",userid);
session.setAttribute("CALL1",password);

response.sendRedirect("index.html");
}    
    else{
    RESULT=1;
    }
}
%>--%>

<!--<html lang="en">
    <script>
        function check(){
            if(btn.useridvalue.value==0){
                alert("user-id field cannot be empty");
            }
            
            if(btn.passvalue.value==0){
                alert("password cannot be empty");
            }
        }
    </script> 
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travel Together Admin Login</title>-->
<!--    <link rel="stylesheet" href="css/adminStyle.css">
</head>
<body>
    <div class="box">
        <span class="borderLine"></span>
        <form action="" method="post" name="btn">
            
            <h2>Admin Login</h2>
            <div class="inputBox">
                <input type="text" required="required" name="useridvalue">
                <span>Username</span>
                <i></i>
            </div>
            <div class="inputBox">
                <input type="password" required="required" name="passvalue">
                <span>Password</span>
                <i></i>
            </div>
            <div class="links">
                <a href="index.html">Forgot Password</a>
                <a href="userSignUp.html">SignUp</a>
-->                <a href="index.html">
<!--    <%
    if(button1!=null && RESULT==1){%>
    <font color="red">invalid user-id/password</font>
    <%}%>
</a>-->
<!--

            </div>
            <input type="submit" value="Submit" name="btn" onclick="check()">
        </form>
    </div>

</body>

</html>-->