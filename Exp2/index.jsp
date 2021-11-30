<%-- 
    Document   : index
    Created on : 29-Nov-2021, 7:21:22 PM
    Author     : Rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <form action="Login" method="POST">
            <label for="username">Username: </label>
            <input type="text" name="username"><br/>
            <label for="username">Password: </label>
            <input type="password" name="password"><br/>
            <input type="submit" value="Login"><br />
        </form>
        <a href="register.html"> New User? Register here </a>
        
        <% if (request.getParameter("err") != null){ %>
        <div>Invalid Login credentials</div>
        <% } %>
    </body>
</html>
