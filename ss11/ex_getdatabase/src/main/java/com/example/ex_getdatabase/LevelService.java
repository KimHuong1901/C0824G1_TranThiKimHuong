package com.example.ex_getdatabase;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class LevelService implements ILevel{
    private String jdbcURL = "jdbc:mysql://localhost:3306/bai_tap_sql?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "Huongh2001@qt";
    private static final String SELECT_ALL_USERS = "select * from trinh_do";
    public LevelService() {}
    protected Connection getConnection() {
        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e){
            System.err.println("Failed to connect to database: " + e.getMessage());
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            System.err.println("Failed to connect to database: " + e.getMessage());
            e.printStackTrace();
        }
        return con;
    }
    @Override
    public List<Level> getLevels() {
        List<Level> levels = new ArrayList<Level>();
        try (Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);){
            System.out.println(preparedStatement);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name_trinh_do");
                levels.add(new Level(id, name));
            }
        } catch (SQLException e) {

            e.printStackTrace();
        }
        return levels;
    }
}
