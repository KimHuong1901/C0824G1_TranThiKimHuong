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
        String resultMessage;
        try{
            float result = Caculator.caculate(firstNum, secondNum, operator);
            resultMessage = firstNum + " + " + secondNum + " = " + result ;
        }catch(Exception e){
            resultMessage = "Error" + e.getMessage();
        }
        req.setAttribute("resultMessage", resultMessage);
        req.getRequestDispatcher("WEB-INF/result.jsp").forward(req,resp);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
