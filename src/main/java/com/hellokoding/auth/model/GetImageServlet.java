package com.hellokoding.auth.model;
 
import java.io.IOException;
import java.sql.SQLException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
@WebServlet("/viewbook")
public class GetImageServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public GetImageServlet() {
        super();
    }
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int imageID = Integer.parseInt(request.getParameter("id"));
        ImageDAO dao = new ImageDAO();
         
        try {
            Images image = dao.get(imageID);
             
            request.setAttribute("image", image);
             
            String page = "/fruit.jsp";
            RequestDispatcher requestDispatcher = request.getRequestDispatcher(page);
            requestDispatcher.forward(request, response);              
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
         
    }
}