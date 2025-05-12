/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.entity.Book;
import za.ac.tut.entity.bl.BookFacadeLocal;

/**
 *
 * @author Lenovo
 */
public class LandBookServlet extends HttpServlet {
    @EJB
    
    
    private BookFacadeLocal bf;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        Long bookName=Long.parseLong(request.getParameter("bookName"));
        Book bk=new Book();
        bk.setId(bookName);
        Book book=bf.find(bookName);
        
        request.setAttribute("book", book);
        
        RequestDispatcher disp=request.getRequestDispatcher("LandBookOutcone.jsp");
        disp.forward(request, response);
    }

}
