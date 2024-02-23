<%-- 
    Document   : dataChangers
    Created on : 08-Feb-2024, 6:17:58 pm
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
        String driver = "com.mysql.jdbc.Driver";
        String url="jdbc:mysql://localhost:3306/traveltogether"+"root"+"atishay";
        if(button1.equals("Submit") && button1!=null){
                String pack1 = request.getParameter("package1");
                String pack2 = request.getParameter("package2");
                String pack3 = request.getParameter("package3");
                String pack4 = request.getParameter("package4");
                
                Class.forName("com.mysql.jdbc.Driver");
//                Class.forName(driver);
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/traveltogether", "root", "atishay");
//                Connection con = DriverManager.getConnection(url);
                PreparedStatement ps = con.prepareStatement("insert into packageupdate values(?,?,?,?)");
                ps.setString(1,pack1);
                ps.setString(2,pack2);
                ps.setString(3,pack3);
                ps.setString(4,pack4);
            
            ps.executeUpdate();
            response.sendRedirect("../indexAdmin.html");
    }
    if(button2.equals("Submit") && button2!=null){
        
    }
        
                
            } catch (Exception e) {
            }
        
%>
