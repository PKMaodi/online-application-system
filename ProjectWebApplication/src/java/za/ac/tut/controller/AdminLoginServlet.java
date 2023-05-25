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
import za.ac.tut.ejb.bl.AdministratorFacadeLocal;
import za.ac.tut.entities.Administrator;

/**
 *
 * @author dell
 */
public class AdminLoginServlet extends HttpServlet {
@EJB
private AdministratorFacadeLocal afl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        String staffNo = (String)request.getParameter("staffNo");
        String password = (String)request.getParameter("password");
        
        session.setAttribute("staffNo", staffNo);
        String url = "";
        
        List<Administrator> admin  = afl.findAll();
        
        for(Administrator log : admin){
            if (log.getStaffNumber().trim().equals(staffNo) && log.getPassword().trim().equals(password)) {
                url = "admin_home.jsp";
                break;
            }else{
                url = "incorrect_login.jsp";
            }
        }
        
       RequestDispatcher disp = request.getRequestDispatcher(url);
       disp.forward(request, response);
    }
}
/*

HttpSession session = request.getSession(true);
        String staffNo = (String)request.getParameter("staffNo");
        String password = (String)request.getParameter("password");
        
        session.setAttribute("staffNo", staffNo);
        String url = "";
        
        List<Administrator> admin  = afl.findAll();
        
        for(Administrator log : admin){
            if (log.getStaffNumber().trim().equals(staffNo) && log.getPassword().trim().equals(password)) {
                url = "admin_home.jsp";
            }else{
                url = "incorrect_login.jsp";
            }
        }
        
       RequestDispatcher disp = request.getRequestDispatcher(url);
       disp.forward(request, response)
*/