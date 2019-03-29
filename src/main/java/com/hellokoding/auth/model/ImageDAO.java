package com.hellokoding.auth.model;
 
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;
 
public class ImageDAO {
    String databaseURL = "jdbc:mysql://localhost:3306/foodmiles";
    String user = "root";
    String password = "password";
     
    public Images get(int id) throws SQLException, IOException {
    		Images image = null;
         
        String sql = "SELECT * FROM images WHERE image_id = ?";
         
        try (Connection connection = DriverManager.getConnection(databaseURL, user, password)) {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet result = statement.executeQuery();
             
            if (result.next()) {
            	image = new Images();
                String image_id = result.getString("image_id");
                Blob blob = result.getBlob("image");
                 
                InputStream inputStream = blob.getBinaryStream();
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead = -1;
                 
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);                  
                }
                 
                byte[] imageBytes = outputStream.toByteArray();
                String base64Image = Base64.getEncoder().encodeToString(imageBytes);
                 
                 
                inputStream.close();
                outputStream.close();
                 
                image.setImage_id(image_id);
                image.setBase64Image(base64Image);
            }          
             
        } catch (SQLException | IOException ex) {
            ex.printStackTrace();
            throw ex;
        }      
         
        return image;
    }
}