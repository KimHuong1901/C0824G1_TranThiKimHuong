import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class test {
    public static void main(String[] args) {
        String jdbcURL = "jdbc:mysql://localhost:3306/trinh_do?useSSL=false";
        String jdbcUsername = "root";
        String jdbcPassword = "Huongh2001@qt";

        try {
            Class.forName("com.mysql.jdbc.Driver"); // Tải driver
            Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
            if (connection != null) {
                System.out.println("Connected to the MySQL database successfully.");
            } else {
                System.out.println("Failed to connect to the database.");
            }
        } catch (ClassNotFoundException e) {
            System.err.println("MySQL JDBC Driver not found.");
            e.printStackTrace();
        } catch (SQLException e) {
            System.err.println("SQL Error: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
