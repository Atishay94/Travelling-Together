import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PhotoServletUpdate extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Set content type
        response.setContentType("image/jpeg");

        // Assuming you have some logic to determine which photo to serve
        // For demonstration, we're serving default.jpg for all requests
        String imagePath = "/path/to/your/photos/default.jpg";

        // Read the photo from the file system and write it to the response
        try (InputStream in = new FileInputStream(imagePath)) {
            OutputStream out = response.getOutputStream();
            byte[] buffer = new byte[1024];
            int bytesRead;
            while ((bytesRead = in.read(buffer)) != -1) {
                out.write(buffer, 0, bytesRead);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

//public class PhotoServletUpdate {
//    
//}
