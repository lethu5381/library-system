/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package za.ac.tut.entity.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entity.Visitor;

/**
 *
 * @author Lenovo
 */
@Local
public interface VisitorFacadeLocal {

    void create(Visitor visitor);

    void edit(Visitor visitor);

    void remove(Visitor visitor);

    Visitor find(Object id);

    List<Visitor> findAll();

    List<Visitor> findRange(int[] range);

    int count();
    
}
