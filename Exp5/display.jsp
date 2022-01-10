<%-- 
    Document   : display
    Created on : 09-Jan-2022, 10:35:38 AM
    Author     : Rahul
--%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Available Books</h1>
        <%
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","root");
            PreparedStatement st = con.prepareStatement("SELECT * FROM book1");
            ResultSet rs = st.executeQuery();
            response.setContentType("text/html");
            out.println("<table border=1 width=50% height=50% >");  
            out.println("<tr><th>Book Name</th><th>Author</th><th>Copies</th><th>Edition</th><th>Price(In Rupees)</th>"); 
            while(rs.next())
            {
                String bname = rs.getString("bookname");
                String author = rs.getString("author");
                String copies = rs.getString("copies");
                String edition = rs.getString("edition");
                String price = rs.getString("price");
                out.println("<tr><td>"+bname+"</td><td>"+author+"</td><td>"+copies+"</td><td>"+edition+"</td><td>"+price+"</td>");
            }
            out.println("</table>");  
            out.println("</html></body>");  
            con.close();
        %>
    </body>
</html>

