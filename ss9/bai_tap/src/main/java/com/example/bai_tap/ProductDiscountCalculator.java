package com.example.bai_tap;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "caculateServlet", urlPatterns = "/caculate")
public class ProductDiscountCalculator extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String description = req.getParameter("description");
        int price = Integer.parseInt(req.getParameter("price"));
        double percent = Double.parseDouble(req.getParameter("percent"));
        double discount_amount = (price * percent)/100;
        double discount_price = price - discount_amount;
        PrintWriter writer = resp.getWriter();
        writer.println("<html>");
        writer.println("<div>");
        writer.println("Discount Amount: " + discount_amount);
        writer.println("</div>");
        writer.println("Discount Price: " + discount_price);
        writer.println("</html>");
    }
}