import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ex {
    public static void main(String[] args) {
        String jdbcURL = "jdbc:mysql://localhost:3306/bai_tap_sql?useSSL=false";
        String jdbcUsername = "root";
        String jdbcPassword = "Huongh2001@qt";

        try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword)) {
            if (connection != null) {
                System.out.println("Connected to the MySQL database successfully.");
            } else {
                System.out.println("Failed to connect to the MySQL database.");
            }
        } catch (SQLException e) {
            System.err.println("SQL Error: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
