<%--
  Created by IntelliJ IDEA.
  User: 84357
  Date: 12/3/2024
  Time: 7:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Product</title>
</head>
<body>
<div class="container mt-5">
    <form method="post">
        <div class="mb-3">
            <label for="inputName" class="form-label">Name</label>
            <input type="text" class="form-control" name="name" id="inputName">
        </div>
        <div class="mb-3">
            <label for="inputPrice" class="form-label">Price</label>
            <input type="text" class="form-control" name="price" id="inputPrice">
        </div>
        <div class="mb-3">
            <label for="inputDesc" class="form-label">Description</label>
            <input type="text" class="form-control" name="desc" id="inputDesc">
        </div>
        <div class="mb-3">
            <label for="inputSup" class="form-label">Supplier</label>
            <input type="text" class="form-control" name="sup" id="inputSup">
        </div>
        <button type="submit" class="btn btn-primary">Submit
        </button>
    </form>
</div>
</body>
</html>
