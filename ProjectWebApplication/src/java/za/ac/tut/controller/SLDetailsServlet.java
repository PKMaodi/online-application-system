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
public class SLDetailsServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        String schoolname = request.getParameter("schoolname");
        String subj1 = request.getParameter("subj1");
        String subj2 = request.getParameter("subj2");
        String subj3 = request.getParameter("subj3");
        String subj4 = request.getParameter("subj4");
        String subj5 = request.getParameter("subj5");
        String subj6 = request.getParameter("subj6");
        String subj7 = request.getParameter("subj7");
        
        Integer subj1M = Integer.parseInt(request.getParameter("subj1M"));
        Integer subj2M = Integer.parseInt(request.getParameter("subj2M"));
        Integer subj3M = Integer.parseInt(request.getParameter("subj3M"));
        Integer subj4M = Integer.parseInt(request.getParameter("subj4M"));
        Integer subj5M = Integer.parseInt(request.getParameter("subj5M"));
        Integer subj6M = Integer.parseInt(request.getParameter("subj6M"));
        Integer subj7M = Integer.parseInt(request.getParameter("subj7M"));
        session.setAttribute("schoolname", schoolname);
        session.setAttribute("subj1", subj1);
        session.setAttribute("subj2", subj2);
        session.setAttribute("subj3", subj3);
        session.setAttribute("subj4", subj4);
        session.setAttribute("subj5", subj5);
        session.setAttribute("subj6", subj6);
        session.setAttribute("subj7", subj7);
        session.setAttribute("subj1M", subj1M);
        session.setAttribute("subj2M", subj2M);
        session.setAttribute("subj3M", subj3M);
        session.setAttribute("subj4M", subj4M);
        session.setAttribute("subj5M", subj5M);
        session.setAttribute("subj6M", subj6M);
        session.setAttribute("subj7M", subj7M);
        
        Integer aps = subj1M + subj2M + subj3M + subj4M + subj5M + subj6M + subj7M;
        session.setAttribute("aps", aps);
        
        RequestDispatcher disp = request.getRequestDispatcher("qualification_app.jsp");
        disp.forward(request, response);
    }
}
