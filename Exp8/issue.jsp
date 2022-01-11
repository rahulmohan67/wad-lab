<%-- 
    Document   : issue
    Created on : 11-Jan-2022, 2:33:35 PM
    Author     : Rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Issue</title>
    </head>
    <body>
        <h1>Book Issue</h1>
        <form name="myform" method="post" action="LibraryServlet">
            <label for="bname">Book Name :</label>
            <input type="text" name="bname"><br>
            <label for="edition">Edition :</label>
            <input type="text" name="edition"><br>
            <label for="pub">Publisher :</label>
            <input type="text" name="pub"><br>
            <input type="submit" value="Get Book">
        </form>
    </body>
</html>

