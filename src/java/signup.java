
import static java.lang.System.in;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;


public class signup {
    
    public static void main(String[] args){
       try{
           
            Scanner sc=new Scanner(in);
            System.out.println("Enter Email I'd ");
            String emailId=sc.next();
            System.out.println("Enter password");
            String password=sc.next();
            System.out.println("Enter name");
            String fName=sc.next();
            
            System.out.println("Enter DOB");
            String dob=sc.next();
            System.out.println("Enter data");
            String data=sc.next();
            
            Class.forName("com.mysql.jdbc.Driver");
            
           try (Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","atishay")) {
               PreparedStatement st=con.prepareStatement("insert into usersignup123 values(?,?,?,?,?)");
               st.setString(1,emailId);
               st.setString(2,password);
               st.setString(3,fName);
               st.setString(4,dob);
               st.setString(5,data);
               
               st.executeUpdate();
           }
            System.out.println("hey record inserted !!!");
       }catch(ClassNotFoundException | SQLException e){
       }
        
    }
    
}
