package com.example.bai_tap.controller;

import com.example.bai_tap.model.Product;
import com.example.bai_tap.service.IProductService;
import com.example.bai_tap.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Objects;

@WebServlet (name = "productController", value = "/products")
public class ProductController extends HttpServlet {
    private static IProductService iproductService = new ProductService();
//    Product product = new Product();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
       if(action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                req.getRequestDispatcher("WEB-INF/add.jsp").forward(req, resp);
                break;
            case "update":
                req.getRequestDispatcher("WEB-INF/update.jsp").forward(req, resp);
                int id = Integer.parseInt( req.getParameter("id"));
                String name = req.getParameter("name");
                Integer price = Integer.parseInt(req.getParameter("price"));
                String description = req.getParameter("description");
                String supplier = req.getParameter("sup");
                Product oldProduct = new Product(name, price, description, supplier);
                req.setAttribute("oldProduct", oldProduct);
                req.getRequestDispatcher("WEB-INF/update.jsp").forward(req, resp);
                break;
            case "remove":
                int oldId = Integer.parseInt(req.getParameter("id"));
                iproductService.delete(oldId);
                resp.sendRedirect("/products");
                break;
            case "sort":
                    List<Product> sortProducts = iproductService.sortByName();
                    req.setAttribute("products", sortProducts);
                    req.getRequestDispatcher("WEB-INF/list.jsp").forward(req, resp);
                    break;
//            case "search":
//                List<Product> findBySupplier = iproductService.findBySupplier(req.getParameter("supplier"));
//                req.setAttribute("products", findBySupplier);
//                req.getRequestDispatcher("WEB-INF/list.jsp").forward(req, resp);
//                break;
            case "search":
                String aaa = req.getParameter("supplier");
                List<Product> findBySupplier = iproductService.findBySupplier(req.getParameter("supplier"));
                req.setAttribute("products", findBySupplier);
                req.getRequestDispatcher("WEB-INF/list.jsp").forward(req, resp);
                break;
            default:
                List<Product> products = iproductService.findAll();
                req.setAttribute("products", products);
                req.getRequestDispatcher("WEB-INF/list.jsp").forward(req, resp);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if(action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                String newName = req.getParameter("name");
                Integer newPrice = Integer.parseInt(req.getParameter("price"));
                String newDescription = req.getParameter("desc");
                String newSupplier = req.getParameter("sup");
                Product newProduct = new Product(newName, newPrice, newDescription, newSupplier);
                iproductService.add(newProduct);
                resp.sendRedirect("/products");
                break;
            case "update":
                Integer id = Integer.valueOf(req.getParameter("id"));
                String name = req.getParameter("name");
                Integer price = Integer.parseInt(req.getParameter("price"));
                String description = req.getParameter("description");
                String supplier = req.getParameter("sup");
                Product product = new Product(name, price, description, supplier);
                iproductService.update(id, product);
                String result ="Update Successfully";
                req.getRequestDispatcher("WEB-INF/view_update.jsp").forward(req, resp);
                break;
            case "search":
                List<Product> findBySupplier = iproductService.findBySupplier(req.getParameter("supplier"));
                req.setAttribute("products", findBySupplier);
                req.getRequestDispatcher("WEB-INF/list.jsp").forward(req, resp);
                break;
            default:
                List<Product> products = iproductService.findAll();
                req.setAttribute("products", products);
                req.getRequestDispatcher("WEB-INF/list.jsp").forward(req, resp);
                break;
        }

    }
}
