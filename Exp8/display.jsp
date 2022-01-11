<%-- 
    Document   : display
    Created on : 11-Jan-2022, 2:32:16 PM
    Author     : Rahul
--%>

<%@page import="java.sql.*" %>
<%@page import="java.sql.DriverManager" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Books</title>
    </head>
    <body>
        <h1>All the books in Library</h1>
        <%
            response.setContentType("text/html");
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","root");
            out.println("<html><body><table border=1 height=50% width=50% >");
            out.println("<tr><th>Book Name</th><th>Author</th><th>Edition</th><th>Publisher</th><th>Last Issued</th><th>Return Date</th>");
            PreparedStatement st = con.prepareStatement("SELECT * FROM library");
            ResultSet rs = st.executeQuery();
            while(rs.next())
            {
                out.println("<tr><td>"+rs.getString("bookname")+"</td><td>"+rs.getString("author")+"</td><td>"+rs.getString("edition")+"</td><td>"+rs.getString("publisher")+"</td><td>"+rs.getString("issue")+"</td><td>"+rs.getString("returndate")+"</td>");
            }
            con.close();
        %>
    </body>
</html>

