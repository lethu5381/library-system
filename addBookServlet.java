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
import za.ac.tut.entity.Book;
import za.ac.tut.entity.bl.BookFacadeLocal;

/**
 *
 * @author Lenovo
 */
public class addBookServlet extends HttpServlet {

    @EJB
    private BookFacadeLocal bf;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        String BookName=request.getParameter("BookName");
        String publisher=request.getParameter("publisher");
        String author=request.getParameter("author");
        Date date=new Date();
        
        Book book=createBook(BookName, publisher, author, date);
        bf.create(book);
        
        RequestDispatcher disp=request.getRequestDispatcher("addBookOutcome.jsp");
        disp.forward(request, response);
        
    }
    private Book createBook(String BookName,String publisher,String author, Date date)
    {
        Book book=new Book();
        book.setName(BookName);
        book.setPublisher(publisher);
        book.setAuthor(author);
        book.setDate(date);
        return book;
    }
}
