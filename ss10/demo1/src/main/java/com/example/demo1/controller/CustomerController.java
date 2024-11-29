package com.example.bai_1.customerController;

import com.example.bai_1.customerModel.Customer;
import com.example.bai_1.customerService.ICustomerService;
import com.example.bai_1.customerService.impl.CustomerService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "customerController", value = "/customers")
public class CustomerController extends HttpServlet {
    private static ICustomerService iCustomerService = new CustomerService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
                List<Customer> customers = iCustomerService.getAll();
                req.setAttribute("customers", customers);
                req.getRequestDispatcher("WEB-INF/view/customer/index.jsp").forward(req, resp);
    }
}
