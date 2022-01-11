<%-- 
    Document   : add
    Created on : 11-Jan-2022, 2:31:19 PM
    Author     : Rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Books</title>
    </head>
    <body>
        <h1>Enter Book Details</h1>
        <form name="myform" method="post" action="AddServlet">
            <label for="bname">Book Name :</label>
            <input type="text" name="bname"><br>
            <label for="author">Author :</label>
            <input type="text" name="author"><br>
            <label for="edition">Edition :</label>
            <input type="number" name="edition"><br>
            <label for="price">Publisher :</label>
            <input type="text" name="pub"><br>
            <input type="submit" value="Add">
        </form>
    </body>
</html>

