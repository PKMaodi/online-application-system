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
public class NOKDetailsServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       HttpSession session = request.getSession();
        
        String nokfirstname = request.getParameter("NOKfirstname");
        String noklastname = request.getParameter("NOKlastname");
        String nokemail = request.getParameter("NOKemail");
        String nokphone = request.getParameter("NOKphone");
        String nokaddress = request.getParameter("NOKaddress");
        String nokpcode = request.getParameter("NOKpcode");
        
        session.setAttribute("nokfirstname", nokfirstname);
        session.setAttribute("noklastname", noklastname);
        session.setAttribute("nokemail", nokemail);
        session.setAttribute("nokphone", nokphone);
        session.setAttribute("nokaddress", nokaddress);
        session.setAttribute("nokpcode", nokpcode);
        
    RequestDispatcher disp = request.getRequestDispatcher("school_leaving.jsp");
    disp.forward(request, response);
    }
    
}
