<%-- 
    Document   : index
    Created on : 11-Jan-2022, 10:43:59 AM
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
        <h1>Passenger Login</h1>
        <form name="myform" method="post" action="LoginServlet">
            <label for="uname">Username :</label>
            <input type="text" name="uname"><br>
            <label for="pword">Password :</label>
            <input type="password" name="pword"><br>
            <input type="submit" value="Login">
            <%-- Here uname = customer and password = password--%>
        </form>
        <%
            String cndtn = request.getParameter("e")==null? "" : request.getParameter("e");
            if(cndtn.equals("invalid"))
            {
                out.print("<p>Invalid Credentials</p>");
            }
        %>
    </body>
</html>

