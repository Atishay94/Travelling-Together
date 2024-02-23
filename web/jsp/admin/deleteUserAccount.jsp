<%@page import="java.sql.Connection"%>
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
String name=request.getParameter("passvalue");
//String firstname=request.getParameter("firstnameval");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/traveltogether", "root", "atishay");
PreparedStatement ft=con.prepareStatement("select*from usersignup where Email=? ");

ft.setString(1, userid);

ResultSet rs=ft.executeQuery();
if(rs.next()){
PreparedStatement ps=con.prepareStatement("delete from usersignup where Email=? ");
ps.setString(1, userid);
ps.executeUpdate();
session.setAttribute("CALL",userid);

response.sendRedirect("../user/signupShow.jsp");
}    
    else{
    RESULT=1;
    }
}
%>

<html lang="en">
    <script>
        function check(){
            if(btn.useridvalue.value==0){
                alert("user-id field cannot be empty");
            }
            
            if(btn.passvalue.value==0){
                alert("name cannot be empty");
            }
        }
    </script> 
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travelling Together</title>
    <link rel="stylesheet" href="../../css/adminStyle.css">
</head>
<body>
    <div class="box">
        <span class="borderLine"></span>
        <form action="" method="post" name="btn">
            
            <h2>Delete User Account</h2>
            <div class="inputBox">
                <input type="text" required="required" name="useridvalue">
                <span>Username</span>
                <i></i>
            </div>
            <div class="inputBox">
                <input type="test" required="required" name="passvalue">
                <span>Name</span>
                <i></i>
            </div>
            <div class="links">
                <a href="indexAdmin.html">Home</a>
                <a href="../user/userSignUp.jsp">SignUp</a>
                <a href="../../index.html"><%
    if(button1!=null && RESULT==1){%>
    <font color="red">invalid user-id/password</font>
    <%}%></a>

            </div>
            <input type="submit" value="Submit" name="btn" onclick="check()">
        </form>
    </div>

        
        
    
</body>

</html>