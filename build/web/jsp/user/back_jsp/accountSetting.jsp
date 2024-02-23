<%-- 
    Document   : accountSetting
    Created on : 10-Feb-2024, 12:38:52 am
    Author     : LENOVO
--%>

<%--<%@page import="java.sql.Connection" %>%>
<%@page import="java.sql.PreparedStatement" %>%>
<%@page import="java.sql.DriverManager" %>%>
<%@page import="java.lang.Long" %>%>

<%
    String button1 = request.getParameter("btns");
    
    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/traveltogether"+"root"+"atishay";
    
    
    if(button1.equals("SaveChange") && button1!=null){
        String username = request.getParameter("UserName");
        
        String pass = request.getParameter("Password");
        String name = request.getParameter("Name");
        String email = request.getParameter("");
        String dob = request.getParameter("DOB");
        String contactNo = request.getParameter("");
        String country = request.getParameter("");
        String bio = request.getParameter("BIO");
        String website = request.getParameter("");
        String twitter = request.getParameter("");
        String fb = request.getParameter("");
        String linkedin = request.getParameter("");
        String insta = request.getParameter("");
        
        try {
                Class.forName(driver);
                
                Connection con = DriverManager.getConnection(url);
                
                PreparedStatement ps = con.prepareStatement("inset into usersigndata values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
                ps.setString(1, username);
                ps.setString(2, pass);
                ps.setString(3, name);
                ps.setString(4, email);
                ps.setString(5, dob);
                ps.setString(6, contactNo);
                ps.setString(7, country);
                ps.setString(8, bio);
                ps.setString(9, website);
                ps.setString(10, twitter);
                ps.setString(11, fb);
                ps.setString(12, linkedin);
                ps.setString(13, insta);
                
                ps.executeUpdate();
                response.sendRedirect("../../../index.jsp");        
            } catch (Exception e) {
            e.printStackTrace();
            }
    }

%>

<%
//    String button1=request.getParameter("btnLogin");
//    int RESULT=0;
//    int COUNT=0;
//    if(button1!=null && button1.equals("Submit"))
//    {
//    
//String userid=request.getParameter("loginUsername");
//String password=request.getParameter("loginPassword");
////String firstname=request.getParameter("firstnameval");
//
//Class.forName("com.mysql.jdbc.Driver");
//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/traveltogether", "root", "atishay");
//PreparedStatement ft=con.prepareStatement("select*from usersignup where Email=? and Password=?");
//
//ft.setString(1, userid);
//ft.setString(2, password);
//
//ResultSet rs=ft.executeQuery();
//if(rs.next()){
//
//PreparedStatement psLogin =con.prepareStatement("select*from usersignup");
//ResultSet rst = psLogin.executeQuery();
//while (rst.next()) {        
      %>
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <a href="../../../index.jsp"></a>
    </body>
</html>-->
