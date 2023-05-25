/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.ApplicantFacadeLocal;
import za.ac.tut.entities.Applicant;

/**
 *
 * @author dell
 */
public class ViewNonQulifyingApplicantsServlet extends HttpServlet {
    @EJB
private ApplicantFacadeLocal apfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        List<Applicant> unqulifyingA = apfl.findunQulifying();
        
        session.setAttribute("unqulifyingA", unqulifyingA);
        
        RequestDispatcher disp = request.getRequestDispatcher("view_unqualifying_outcome.jsp");
        disp.forward(request, response);
    }

}
