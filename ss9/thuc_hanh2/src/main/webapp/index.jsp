<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <style>
        .login{
            height: 180px;
            width: 230px;
            margin: 0;
            padding: 10px;
            border: 1px solid #CCCCcc;
        }
        .login input{
            padding: 5px;
            margin: 5px;
            width: 200px;
        }
    </style>
</head>
<body>
<form action="/login" method="post">
    <div class="login">
        <h2>com.example.thuc_hanh2.Login</h2>
        <input type="text" name="username" size="30" placeholder="username"/>
        <input type="password" name="password" size="30" placeholder="password"/>
        <input type="submit" value="Sign in"/>
    </div>
</form>
</body>
</html>