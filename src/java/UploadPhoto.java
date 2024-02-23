import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;
import javax.servlet.ServletException;

@WebServlet("/updatePhoto")
public class UploadPhoto extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        // Get the uploaded photo from the request
        Part filePart = request.getPart("photo");
        InputStream fileContent = filePart.getInputStream();

        // Save the uploaded photo to a location on the server
        String uploadsDirectory = "/path/to/uploads/";
        String photoFileName = "photo.jpg"; // Or generate a unique filename
        Files.copy(fileContent, Paths.get(uploadsDirectory, photoFileName));

        // Generate the HTML content with the new photo
        String newPhotoUrl = "/uploads/" + photoFileName; // Assuming the photo is accessible at this URL
        String updatedHtml = "<html><body><img src=\"" + newPhotoUrl + "\" alt=\"New Photo\"></body></html>";

        // Set the content type and write the updated HTML to the response
        response.setContentType("text/html");
        response.getWriter().write(updatedHtml);
    }
}

//public class UploadPhoto {
//    
//}
