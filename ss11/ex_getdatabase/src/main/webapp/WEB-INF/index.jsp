<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body>
<form>
  <table>
    <tr>
      <td>id</td>
      <td>Name</td>
    </tr>
      <%
    String url = "jdbc:mysql://localhost:3306/bai_tap_sql";
    String username = "root";
    String password = "Huongh2001@qt";
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;

    try {
      // Tải driver JDBC
      Class.forName("com.mysql.cj.jdbc.Driver");

      // Kết nối tới cơ sở dữ liệu
      connection = DriverManager.getConnection(url, username, password);

      // Thực thi câu lệnh SQL
      String query = "SELECT * FROM trinh_do";
      statement = connection.createStatement();
      resultSet = statement.executeQuery(query);

      // Hiển thị kết quả
      while (resultSet.next()) {
        %>
    <tr><td><%=resultSet.getInt("id")%>/td></tr>
    <tr><td><%=resultSet.getInt("name_trinh_do")%>/<td></tr>
        <%
      }
        %>
  </table>
<%
      resultSet.close();
      statement.close();
      connection.close();
    } catch (Exception e) {
      e.printStackTrace();
    }
  %>
</form>
</body>
</html>