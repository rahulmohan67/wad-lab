/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.exp5;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author Rahul
 */
public class RegisterServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            String bname = request.getParameter("bname");
            String author = request.getParameter("author");
            PrintWriter out = response.getWriter();
            try{
                Class.forName("org.postgresql.Driver");
                Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","root");
                PreparedStatement st = con.prepareStatement("INSERT INTO book1(bookname,author,copies,edition,price) VALUES (?,?,?,?,?)");
                st.setString(1, bname);
                st.setString(2, author);
                st.setInt(3, Integer.parseInt(request.getParameter("number")));
                st.setInt(4, Integer.parseInt(request.getParameter("edition")));
                st.setInt(5, Integer.parseInt(request.getParameter("price")));
                st.executeUpdate();
                out.println("New Book Added Successfully");
                con.close();
            }
            catch(SQLException | ClassNotFoundException sqlE) {
                out.println(sqlE);
            }
        finally {
            
            }
}

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
