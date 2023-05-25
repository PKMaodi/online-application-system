/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.bl;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.entities.Administrator;
import za.ac.tut.entities.Applicant;

/**
 *
 * @author dell
 */
@Stateless
public class AdministratorFacade extends AbstractFacade<Administrator> implements AdministratorFacadeLocal {

    @PersistenceContext(unitName = "ApplicantEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AdministratorFacade() {
        super(Administrator.class);
    }
     @Override
    public Administrator logIn(String staffNumber, String password) {
        Query query = em.createQuery("SELECT c from Administrator c where c.staffNumber = ?1 and c.password = ?2");
        query.setParameter(1, staffNumber);
        query.setParameter(2, password);
        Administrator admin = (Administrator)query.getSingleResult();
        return admin;
    }

    @Override
    public List<Applicant> getQualifying(Integer aps) {
        Query query = em.createQuery("SELECT c from Applicant c where c.marks.aps <= ?1");
        query.setParameter(1, aps);
        List<Applicant> applicants = query.getResultList();
        return applicants;
    }

    @Override
    public List<Applicant> getUnqualifying(Integer aps) {
        Query query = em.createQuery("SELECT c from Applicant c where c.marks.aps >= ?1");
        query.setParameter(1, aps);
        List<Applicant> applicants = query.getResultList();
        return applicants;
    }

    @Override
    public void approveApplicant(Applicant applicant) {
        Query query = em.createQuery("UPDATE ApplicationA a set a.status = 'Admitted' where a.id = ?1");
        query.setParameter(1,applicant);
    }

    @Override
    public void declineApplicant(Applicant applicant) {
        Query query = em.createQuery("UPDATE ApplicationA a set a.status = 'Rejected' where a.id = ?1");
        query.setParameter(1,applicant);
    }
    
}
