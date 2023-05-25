/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.ApplicantFacadeLocal;
import za.ac.tut.ejb.bl.NextOfKinFacadeLocal;
import za.ac.tut.ejb.bl.SchoolMarksFacadeLocal;
import za.ac.tut.entities.Applicant;
import za.ac.tut.entities.NextOfKin;
import za.ac.tut.entities.SchoolMarks;

/**
 *
 * @author dell
 */
public class SubmitRegistrationServlet extends HttpServlet {
@EJB
private SchoolMarksFacadeLocal sfl;

@EJB
private ApplicantFacadeLocal afl;


@EJB
private NextOfKinFacadeLocal nfl;


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    HttpSession session = request.getSession();
    
    String idnum = (String)session.getAttribute("idnum");
        String firstname = (String)session.getAttribute("firstname");
        String lastname = (String)session.getAttribute("lastname");
        String gender = (String)session.getAttribute("gender");
        String email = (String)session.getAttribute("email");
        String phone = (String)session.getAttribute("phone");
        String address = (String)session.getAttribute("address");
        String pcode = (String)session.getAttribute("pcode");
        

        String schoolname = (String)session.getAttribute("schoolname");
        String subj1 = (String)session.getAttribute("subj1");
        String subj2 = (String)session.getAttribute("subj2");
        String subj3 = (String)session.getAttribute("subj3");
        String subj4 = (String)session.getAttribute("subj4");
        String subj5 = (String)session.getAttribute("subj5");
        String subj6 = (String)session.getAttribute("subj6");
        String subj7 = (String)session.getAttribute("subj7");
        
        Integer subj1M = (Integer)session.getAttribute("subj1M");
        Integer subj2M = (Integer)session.getAttribute("subj2M");
        Integer subj3M = (Integer)session.getAttribute("subj3M");
        Integer subj4M = (Integer)session.getAttribute("subj4M");
        Integer subj5M = (Integer)session.getAttribute("subj5M");
        Integer subj6M = (Integer)session.getAttribute("subj6M");
        Integer subj7M = (Integer)session.getAttribute("subj7M");
        Integer aps = (Integer)session.getAttribute("aps");
        
        String nokfirstname = (String)session.getAttribute("nokfirstname");
        String noklasttname = (String)session.getAttribute("noklastname");
        String nokemail = (String)session.getAttribute("nokemail");
        String nokphone = (String)session.getAttribute("nokphone");
        String nokaddress = (String)session.getAttribute("nokaddress");
        String nokpcode = (String)session.getAttribute("nokpcode");
        
        String qualif = (String)session.getAttribute("qualif");
        String period = (String)session.getAttribute("period");
        
        NextOfKin nok = CreateNOK(nokfirstname,noklasttname,nokemail,nokphone,nokaddress,nokpcode,idnum);
        nfl.create(nok);
        
        SchoolMarks schoolM = CReateSc(aps,idnum,subj1,subj1M,subj2,subj2M,subj3,subj3M,subj4,subj4M,subj5,subj5M,subj6,subj6M,subj7,subj7M);
        sfl.create(schoolM);
        
        Applicant motho = CreateAppli(qualif,schoolM,idnum,firstname,lastname,gender,email,phone,address,pcode,aps);
        afl.create(motho);
        
        
        
        RequestDispatcher disp = request.getRequestDispatcher("application_success.jsp");
        disp.forward(request, response);
    }

    private NextOfKin CreateNOK(String nokfirstname, String noklasttname, String nokemail, String nokphone, String nokaddress, String nokpcode, String idnum) {
        NextOfKin nok = new NextOfKin();
        nok.setEmail(nokemail);
        nok.setName(idnum);
        nok.setPhone(nokphone);
        nok.setSurname(noklasttname);
        nok.setPcode(nokpcode);
        nok.setMadulo(nokaddress);
        
        return nok;
    }

    private SchoolMarks CReateSc(Integer aps, String idnum, String subj1, Integer subj1M, String subj2, Integer subj2M, String subj3, Integer subj3M, String subj4, Integer subj4M, String subj5, Integer subj5M, String subj6, Integer subj6M, String subj7, Integer subj7M) {
        SchoolMarks schoolM = new SchoolMarks();
        schoolM.setId(idnum);
        schoolM.setSub1Mark(subj1M);
        schoolM.setSub2Mark(subj2M);
        schoolM.setSub3Mark(subj3M);
        schoolM.setSub4Mark(subj4M);
        schoolM.setSub5Mark(subj5M);
        schoolM.setSub6Mark(subj6M);
        schoolM.setSub7Mark(subj7M);
        schoolM.setSubject1(subj1);
        schoolM.setSubject2(subj2);
        schoolM.setSubject3(subj3);
        schoolM.setSubject4(subj4);
        schoolM.setSubject5(subj5);
        schoolM.setSubject6(subj6);
        schoolM.setSubject7(subj7);
        
        return schoolM;
    }

    private Applicant CreateAppli(String qualif, SchoolMarks schoolM, String idnum, String firstname, String lastname, String gender, String email, String phone, String address, String pcode, Integer aps) {
        Applicant appli  = new Applicant();
        
        appli.setAddress(address);
        appli.setApplicationStatus("Pending");
        appli.setAps(aps);
        appli.setCreationDate(new Date());
        appli.setEmailAddress(address);
        appli.setFirstName(firstname);
        appli.setId(idnum);
        appli.setPhoneNumber(phone);
        appli.setQualification(qualif);
        appli.setSurname(lastname);
        return appli;
    }

    

    

    

}
