/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author dell
 */
public class QulificationSelectServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
  
        String qualif = request.getParameter("qualif");
        String period = request.getParameter("period");
        
        session.setAttribute("qualif", qualif);
        session.setAttribute("period", period);
  
        RequestDispatcher disp = request.getRequestDispatcher("application_confirm.jsp");
        disp.forward(request, response);
    }

}
