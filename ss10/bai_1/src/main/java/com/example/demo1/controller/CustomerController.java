package com.example.demo1.controller;

import com.example.demo1.model.Customer;
import com.example.demo1.service.impl.CustomerService;
import com.example.demo1.service.impl.ICustomerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
