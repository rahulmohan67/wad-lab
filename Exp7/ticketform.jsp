<%-- 
    Document   : ticketform
    Created on : 11-Jan-2022, 10:44:23 AM
    Author     : Rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Tickets</title>
    </head>
    <body>
        <h1>Enter Ticket Information</h1>
        <form name="myform" method="post" action="BookingServlet">
            <label for="pname">Passenger Name :</label>
            <input type="text" name="pname"><br>
            <label for="age">Age :</label>
            <input type="number" name="age"><br>
            <label for="gender">Gender :</label>
            <input type="text" name="gender"><br>
            <label for="from">From :</label>
            <input type="text" name="from">
            <label for="to">To :</label>
            <input type="text" name="to"><br>
            <input type="submit" value="Book Ticket">
        </form>
    </body>
</html>

