

    
import static java.lang.System.in;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;
import java.sql.SQLException;

public class UserLogin {
     
    @SuppressWarnings("CallToPrintStackTrace")
    public static void main(String[] args) {
      
            Scanner sc=new Scanner(in);
            
            System.out.println("Enter Email id");
            String email=sc.next();
            System.out.println("Enter Password");
            String password=sc.next();
             try{
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","atishay");
            
            PreparedStatement st=con.prepareStatement("insert into traveluserlogin value(?,?) ");
            st.setString(1,email);
            st.setString(2,password);
            
           st.executeUpdate();
            
                 System.out.println("Inserted sucessfully !");
           
              
            
       }catch( SQLException | ClassNotFoundException ex)
        {
        ex.printStackTrace();
        }
    }
    
    }




