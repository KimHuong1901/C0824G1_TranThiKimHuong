package com.example.bai_tap.repositpry;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BaseRepository {
    private static String jdbcURL = "jdbc:mysql://localhost:3306/product?useSSL=false";
    private static String jdbcUsername = "root";
    private static String jdbcPassword = "Huongh2001@qt";
    private static Connection connection = null;
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    private BaseRepository() {
    }
    public static Connection getConnection() {
        return connection;
    }
}
