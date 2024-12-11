<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Borrow Book</title>
</head>
<body>
<h2>Borrow Book</h2>
<c:if test="${not empty errorMessage}">
    <p style="color:red;">${errorMessage}</p>
</c:if>
<form action="borrowBook" method="post">
    <label for="book">Select Book:</label>
    <select name="bookId" id="book">
        <c:forEach var="book" items="${books}">
            <option value="${book.id}">${book.name}</option>
        </c:forEach>
    </select>
    <br>
    <label for="student">Select Student:</label>
    <select name="studentId" id="student">
        <c:forEach var="student" items="${students}">
            <option value="${student.id}">${student.name}</option>
        </c:forEach>
    </select>
    <br>
    <label for="borrowedDay">Borrowed Day:</label>
    <input type="date" name="borrowedDay" required>
    <br>
    <label for="paymentDay">Payment Day:</label>
    <input type="date" name="paymentDay" required>
    <br>
    <input type="submit" value="Confirm Borrow">
</form>
</body>
</html>
