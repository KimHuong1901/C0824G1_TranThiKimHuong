package com.example.final_module.controller;
import java.sql.Date;
import com.example.final_module.model.Book;
import com.example.final_module.model.BorrowBooks;
import com.example.final_module.model.Student;
import com.example.final_module.repository.BookRepository;
import com.example.final_module.repository.BorrowBook;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

import java.util.List;

@WebServlet(name = "bookController",urlPatterns = "/book")
public class BookController extends HttpServlet {
    private static BookRepository bookRepository = new BookRepository();
    private static BorrowBook borrowBook = new BorrowBook();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String action = req.getParameter("action");
        if(action == null){
            action ="";
        }

        switch(action){
            case "borrow":
                List<Book> books1 = bookRepository.findAll();
                List<Student> students = bookRepository.getAllStudent();
                req.setAttribute("books", books1);
                req.setAttribute("students", students);
                RequestDispatcher dispatcher = req.getRequestDispatcher("borrowBook.jsp");
                dispatcher.forward(req, resp);
                break;
            default:
                List<Book> books = bookRepository.findAll();
                req.setAttribute("books",books );
                req.getRequestDispatcher("/WEB-INF/view/book.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String bookId = req.getParameter("bookId");
        int studentId = Integer.parseInt(req.getParameter("studentId"));
        Date borrowedDay = Date.valueOf(req.getParameter("borrowedDay")) ;
        Date paymentDay = Date.valueOf(req.getParameter("paymentDay"));
        Book books = borrowBook.getId(bookId);
        if (books.getQuantity() > 0) {
            borrowBook.borrowBook(bookId, studentId, borrowedDay, paymentDay);
             books = borrowBook.updateBookQuantity(studentId, books.getQuantity() -1)
//            resp.sendRedirect("books");
        } else {
            req.setAttribute("errorMessage", "Sách đã hết.");
            doGet(req, resp);
        }
    }
}