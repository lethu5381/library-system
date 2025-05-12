/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package za.ac.tut.entity.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import za.ac.tut.entity.Visitor;

/**
 *
 * @author Lenovo
 */
@Stateless
public class VisitorFacade extends AbstractFacade<Visitor> implements VisitorFacadeLocal {

    @PersistenceContext(unitName = "BooksEJBPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public VisitorFacade() {
        super(Visitor.class);
    }
    
}
