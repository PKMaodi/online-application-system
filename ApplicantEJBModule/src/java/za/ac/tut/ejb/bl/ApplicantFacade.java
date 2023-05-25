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
import za.ac.tut.entities.Applicant;

/**
 *
 * @author dell
 */
@Stateless
public class ApplicantFacade extends AbstractFacade<Applicant> implements ApplicantFacadeLocal {

    @PersistenceContext(unitName = "ApplicantEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ApplicantFacade() {
        super(Applicant.class);
    }

    @Override
    public Applicant getApplicationStatus(String id) {
        Query query = em.createQuery("SELECT c FROM Applicant c where c.id = ?1");
        query.setParameter(1, id);
        Applicant status = (Applicant)query.getSingleResult();
        return status;
    }

    @Override
    public List<Applicant> findunQulifying() {
        Query query = em.createQuery("SELECT c FROM Applicant c where c.applicationStatus = 'Declined'");
        List<Applicant> status = query.getResultList();
        return status;
    }

    @Override
    public List<Applicant> findQulifying() {
        Query query = em.createQuery("SELECT c FROM Applicant c where c.applicationStatus = 'Accepted'");
        List<Applicant> status = query.getResultList();
        return status;
    }
    
}
