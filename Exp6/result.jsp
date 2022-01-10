<%-- 
    Document   : result
    Created on : 09-Jan-2022, 7:59:10 PM
    Author     : Rahul
--%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Results</title>
    </head>
    <body>
        <h1>Result</h1>
        <%
            Class.forName("org.postgresql.Driver");
            response.setContentType("text/html");
            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","root");
            PreparedStatement st = con.prepareStatement("SELECT * FROM answers WHERE qid=? AND ANSWERS=?");
            int c=1,count,i;
            count=0;
            i=1;
            while(c<6)
            {
                String q = Integer.toString(c);
                String p = request.getParameter(q);
                st.setString(1, q);
                st.setString(2, p);
                ResultSet rs = st.executeQuery();
                if(rs.next())
                {
                    count=count+1;
                    out.println("<h2>question "+q+" : correct</h2><br>");
                }
                else
                {
                    out.println("<h2>question "+q+" : wrong<h2><br>");
                }
                c=c+1;
            }
            out.println("<h2>Total Marks(Out of 5) :"+Integer.toString(count)+"</h2>");
            con.close();
        %>
    </body>
</html>

