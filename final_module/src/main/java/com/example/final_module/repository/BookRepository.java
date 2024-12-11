package com.example.final_module.repository;

import com.example.final_module.model.Book;
import com.example.final_module.model.Student;
import com.example.final_module.repository.Database;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookRepository {
    public List<Book> findAll() {
        List<Book> books = new ArrayList<>();
        try {
            PreparedStatement statement = Database.getConnection().prepareStatement("select * from books");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                String idBook=resultSet.getString("id");
                String nameBook=resultSet.getString("name_book");
                String author=resultSet.getString("author");
                String description=resultSet.getString("description_book");
                Integer quantity=resultSet.getInt("quantity");
                books.add(new Book(idBook,nameBook,author,description,quantity));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return books;
    }

    public static List<Student> getAllStudent() {
        List<Student> students = new ArrayList<>();
        try{
            PreparedStatement statement = Database.getConnection().prepareStatement("SELECT * FROM students");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                String idStudent=resultSet.getString("id");
                String nameStudent=resultSet.getString("name_student");
                String nameClass=resultSet.getString("name_class");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return students;
    }

}