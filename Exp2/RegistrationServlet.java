/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.exp2;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


/**
 *
 * @author Rahul
 */
public class RegistrationServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fullname = request.getParameter("fullname");
        String address  = request.getParameter("address");
        String email    = request.getParameter("email");
        String phone    = request.getParameter("phone");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
                
        try{
            Class.forName("org.postgresql.Driver");
            Connection c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "root");
            Statement s = c.createStatement();
            s.executeUpdate("INSERT INTO login_users(fullname, address, email, phone, username, password) VALUES ('" + fullname + "', '" + address  + "', '" + email    + "', '" + phone    + "', '" + username + "', '" + password + "');" );
            
            /* Redirect to login page after succesful register */
            response.sendRedirect("index.jsp");
            
        }catch(Exception e){
            System.out.println(e);
            response.setContentType("text/html;charset=UTF-8");
            try (PrintWriter out = response.getWriter()) {
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Error</title>");            
                out.println("</head>");
                out.println("<body>");
                out.println("<h1 style='color:blue';>Error creating account</h1>");
                out.println("<br>");
                out.println("<br><a href='register.html'>Register</a>");
                out.println("</body>");
                out.println("</html>");
            }

        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
