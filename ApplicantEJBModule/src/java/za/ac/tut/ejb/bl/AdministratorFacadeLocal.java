/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.Administrator;
import za.ac.tut.entities.Applicant;

/**
 *
 * @author dell
 */
@Local
public interface AdministratorFacadeLocal {

    void create(Administrator administrator);

    void edit(Administrator administrator);

    void remove(Administrator administrator);

    Administrator find(Object id);

    List<Administrator> findAll();

    List<Administrator> findRange(int[] range);

    int count();
    
    Administrator  logIn(String staffNumber, String password);
    
    List<Applicant> getQualifying(Integer aps);
    
    List<Applicant> getUnqualifying(Integer aps);
    
    void approveApplicant(Applicant applicant);
    
    void declineApplicant(Applicant applicant);
    
}
