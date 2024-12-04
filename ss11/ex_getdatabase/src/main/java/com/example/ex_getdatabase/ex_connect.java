package com.example.ex_getdatabase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ex_connect {
    public static void main(String[] args) {
        String jdbcURL = "jdbc:mysql://localhost:3306/trinh_do?useSSL=false";
        String jdbcUsername = "root";
        String jdbcPassword = "Huongh2001@qt";

        try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword)) {
            if (connection != null) {
                System.out.println("Successfully connected to the database.");
            } else {
                System.out.println("Connection failed.");
            }
        } catch (SQLException e) {
            System.err.println("Connection error: " + e.getMessage());
            e.printStackTrace();
        }
    }
}

