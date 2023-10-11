/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package LoginServlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.File;
import model.User;
import util.FileUtil;
import java.io.IOException;
import java.util.List;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Obtén la ruta relativa al directorio del proyecto
        String projectDirectory = getServletContext().getRealPath("/");
        String filePath = projectDirectory + "data" + File.separator + "users.txt";
        
        List<User> users = FileUtil.readFromFile(filePath);

        for (User user : users) {
            if (user.getUsername().equals(username) && user.getPassword().equals(password)) {
                request.getSession().setAttribute("user", user);
                response.sendRedirect("dashboard.jsp");
                return;
            }
        }

        response.sendRedirect("login.jsp?error=Credenciales%20invalidas");  // Modificado aquí
    }
}
