/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.entity.Visitor;
import za.ac.tut.entity.bl.VisitorFacadeLocal;

/**
 *
 * @author Lenovo
 */
public class addVisitorServlet extends HttpServlet {
    @EJB
    private VisitorFacadeLocal pf;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("surname");
        Long id=Long.parseLong(request.getParameter("id"));
        Date date =new Date();
        
        Visitor existingVisitor = pf.find(id);
        
        if (existingVisitor == null) {
        
            Visitor visitor = createVisitor(id,name,email,date);
        pf.create(visitor);
        
    
            RequestDispatcher disp = request.getRequestDispatcher("add_outcome.jsp");
         disp.forward(request,response);
        
    } else{
        
              
              
         RequestDispatcher disp = request.getRequestDispatcher("addex_outcome.jsp");
         disp.forward(request,response);
        
        }
        
      
    }

    private Visitor createVisitor(Long id,String name, String email, Date date)
    {
        Visitor visitor=new Visitor();
        visitor.setId(id);
        visitor.setName(name);
        visitor.setEmail(email);
        visitor.setDate(date);
        return visitor;
    }
    
}
