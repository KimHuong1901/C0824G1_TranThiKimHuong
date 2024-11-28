package com.example.thuc_hanh2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "loginServlet", value = "/login")
public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        PrintWriter writer = resp.getWriter();
        writer.println("<html>");
        if("admin".equals(username) && "admin".equals(password)){
            writer.println("<h1>Welcome" + username + "to website</h1>");
        } else {
            writer.println("<h1>com.example.thuc_hanh2.Login Error</h1>");
        }
        writer.println("</html>");
    }
}
