<%-- 
    Document   : return
    Created on : 11-Jan-2022, 2:33:59 PM
    Author     : Rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Return</title>
    </head>
    <body>
        <h1>Book Details</h1>
        <form name="myform" method="post" action="ReturnServlet">
            <label for="bname">Book Name :</label>
            <input type="text" name="bname"><br>
            <label for="edition">Edition :</label>
            <input type="text" name="edition"><br>
            <label for="pub">Publisher :</label>
            <input type="text" name="pub"><br>
            <input type="submit" value="Return Book">
        </form>
    </body>
</html>
