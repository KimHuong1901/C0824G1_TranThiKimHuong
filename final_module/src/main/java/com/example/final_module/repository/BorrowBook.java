package com.example.final_module.repository;

import com.example.final_module.model.Book;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BorrowBook {
    public static void borrowBook(String bookId, int studentId, Date borrowedDay, Date paymentDay) {
        try{
            PreparedStatement statement = Database.getConnection().prepareStatement("INSERT INTO borrowed_tickects (id, id_book, id_student, status_ticket, borrowed_day, payment_day) VALUES (?, ?, ?, ?, ?, ?)");
            statement.setString(1, generateId());
            statement.setString(2, bookId);
            statement.setInt(3, studentId);
            statement.setBoolean(4, true);
            statement.setDate(5, borrowedDay);
            statement.setDate(6, paymentDay);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    private static String generateId() {
        return "BT" + System.currentTimeMillis();
    }
    public static boolean updateBookQuantity(String bookId,int quantity) {
        try{
            PreparedStatement statement = Database.getConnection().prepareStatement("UPDATE books SET quantity = ? WHERE id = ?");
            statement.setInt(1,quantity);
            statement.setString(2,bookId);
            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }
    public Book getId(String id){
        try{
            PreparedStatement statement = Database.getConnection().prepareStatement("select * from books where id = ?");
            statement.setString(1,id);
            ResultSet resultSet = statement.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

