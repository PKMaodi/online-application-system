/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.NextOfKin;

/**
 *
 * @author dell
 */
@Local
public interface NextOfKinFacadeLocal {

    void create(NextOfKin nextOfKin);

    void edit(NextOfKin nextOfKin);

    void remove(NextOfKin nextOfKin);

    NextOfKin find(Object id);

    List<NextOfKin> findAll();

    List<NextOfKin> findRange(int[] range);

    int count();
    
}
