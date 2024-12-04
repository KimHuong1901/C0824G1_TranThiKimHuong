package com.example.ex_getdatabase;

import java.io.*;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/level")
public class HelloServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private LevelService levelService;
    public void init(){
        levelService = new LevelService();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        List<Level> levels = levelService.getLevels();
        request.setAttribute("levels", levels);
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view_ex.jsp");
        rd.forward(request, response);
    }
}