<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    table {
      margin: auto;
      border-collapse: collapse;
      width: 50%;
    }
  </style>
</head>
<body>
<div style="text-align: center"><h2><strong >Danh sách khách hàng</strong></h2></div>
<div class="container">
  <table class="table" style="max-width: 80%;">
    <thead>
    <tr>
      <th style="width: 400px">Tên</th>
      <th style="width: 200px">Ngày sinh</th>
      <th style="width: 200px">Địa chỉ</th>
      <th style="width: 200px">Ảnh</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="customer" items="${customers}" varStatus="c">
      <tr>
        <td>${customer.name}</td>
        <td>${customer.bod}</td>
        <td>${customer.address}</td>
        <td><img style="height: 100px; width: 80px" src="${customer.avatar }"></td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</html>