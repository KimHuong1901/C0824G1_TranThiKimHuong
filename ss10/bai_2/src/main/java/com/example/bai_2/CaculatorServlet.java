package com.example.bai_2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CaculatorServlet", value = "/calculate")
public class CaculatorServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        float firstNum = Float.parseFloat(req.getParameter("first-num"));
        float secondNum = Float.parseFloat(req.getParameter("second-num"));
        String operator = req.getParameter("operator");
        PrintWriter writer = resp.getWriter();
        writer.println("<html>");
        writer.println("<h2> Result: </h2>");
        try{
            float result = Caculator.caculate(firstNum, secondNum, operator);
            writer.println(firstNum + " + " + secondNum + " = " + result );
        }catch(Exception e){
            writer.println(e.getMessage());
        }
        writer.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
