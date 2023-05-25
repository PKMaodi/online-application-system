/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.SchoolMarks;

/**
 *
 * @author dell
 */
@Local
public interface SchoolMarksFacadeLocal {

    void create(SchoolMarks schoolMarks);

    void edit(SchoolMarks schoolMarks);

    void remove(SchoolMarks schoolMarks);

    SchoolMarks find(Object id);

    List<SchoolMarks> findAll();

    List<SchoolMarks> findRange(int[] range);

    int count();
    
}
