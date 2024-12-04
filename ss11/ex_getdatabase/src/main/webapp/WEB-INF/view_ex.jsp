<%--
  Created by IntelliJ IDEA.
  User: 84357
  Date: 12/2/2024
  Time: 2:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form method="get">
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
        </tr>
        <c:forEach var="level" items="${levels}">
            <tr>
                <td><c:out value="${level.id}"/></td>
                <td><c:out value="${level.nameTrinhDo}"/></td>
            </tr>
        </c:forEach>
    </table>
</form>


</body>
</html>
