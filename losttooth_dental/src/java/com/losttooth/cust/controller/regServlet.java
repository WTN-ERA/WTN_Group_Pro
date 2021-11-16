package com.losttooth.cust.controller;

import com.losttooth.cust.dao.custDAO;
import com.losttooth.cust.model.Cust;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;


@WebServlet(name = "regServlet", urlPatterns = {"/customer/register"})
public class regServlet extends HttpServlet {
    
    private custDAO dao = new custDAO();

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
        
        String pass = request.getParameter("password");
        String cpass = request.getParameter("confirmPassword");
        
        if (!(pass.equals(cpass))){
            response.sendRedirect("pass_missmatch.html?Password miss match error");
            } else if (pass.isEmpty() || cpass.isEmpty()) {
                response.sendRedirect("pass_error.html?Blank password error");
            } else {

        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        Cust cust = new Cust();
        cust.setFirstname(firstname);
        cust.setLastname(lastname);
        cust.setEmail(email);
        cust.setPassword(password);


            dao.regCust(cust);
            response.sendRedirect("c_login.jsp");
        
        }
        
//        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/c_login.jsp");
//        dispatcher.forward(request, response);

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
//        processRequest(request, response);
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
