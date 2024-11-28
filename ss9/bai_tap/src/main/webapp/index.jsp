<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>ProductCaculate</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <style>
    .mb-3{
      width: 500px
    }
  </style>
</head>
<body>
<div class="container mt-3">
  <h2>Product Discount Calculator</h2>
<form action="/caculate" method="post">
  <div class="mb-3 mt-3">
    <label for="description">Product Description:</label>
    <input type="text" class="form-control" id="description" placeholder="Enter Description" name="description">
  </div>
  <div class="mb-3">
    <label for="price">List Price:</label>
    <input type="text" class="form-control" id="price" placeholder="Enter Price" name="price">
  </div>
  <div class="mb-3">
    <label for="percent">Discount Percent:</label>
    <input type="text" class="form-control" id="percent" placeholder="Enter Percent" name="percent">
  </div>
  <button type="submit" class="btn btn-primary">Caculate Discount</button>
</form>
</div>
</body>
</html>