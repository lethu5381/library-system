/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
public class availableBooksServlet extends HttpServlet {
@EJB 

BookFacadeLocal bfl;
   

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
          List<Book>books = bfl.findAll();
        request.setAttribute("books", books);
        
        RequestDispatcher disp = request.getRequestDispatcher("availableBooks.jsp");
        disp.forward(request, response);
    }

}
