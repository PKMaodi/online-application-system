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
public class PersonalDetailsServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        String idnum = request.getParameter("idnum");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String pcode = request.getParameter("pcode");
        
        session.setAttribute("idnum", idnum);
        session.setAttribute("firstname", firstname);
        session.setAttribute("lastname", lastname);
        session.setAttribute("gender", gender);
        session.setAttribute("email", email);
        session.setAttribute("phone", phone);
        session.setAttribute("address", address);
        session.setAttribute("pcode", pcode);
        
        RequestDispatcher disp = request.getRequestDispatcher("next_of_kin.jsp");
        disp.forward(request, response);
        
    }
}
