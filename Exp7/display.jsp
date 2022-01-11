<%-- 
    Document   : display
    Created on : 11-Jan-2022, 10:41:54 AM
    Author     : Rahul
--%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking Details</title>
    </head>
    <body>
        <h1>Booking Details</h1>
        <%
            response.setContentType("text/html");
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","root");
            PreparedStatement st = con.prepareStatement("SELECT * FROM bookings");
            out.println("<html><body><table border=1 height=50% width=50% >");
            out.println("<tr><th>Passenger Name</th><th>Age</th><th>Gender</th><th>From</th><th>To</th>");
            ResultSet rs = st.executeQuery();
            while(rs.next())
            {
                out.println("<tr><td>"+rs.getString("pname")+"</td><td>"+rs.getString("age")+"</td><td>"+rs.getString("gender")+"</td><td>"+rs.getString("StartingPoint")+"</td><td>"+rs.getString("Destination")+"</td>");
            }
            out.println("</table></body></html>");
            con.close();
        %>
    </body>
</html>
