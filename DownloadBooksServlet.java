/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
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
public class DownloadBooksServlet extends HttpServlet {
@EJB BookFacadeLocal bfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      List<Book> books = getBooks();
      response.setContentType("text/plain");
        response.setHeader("Content-Disposition", "attachment;filename=book_records.txt");

        PrintWriter out = response.getWriter();
        out.println("Available Book Records:\n");

        for (Book book : books) {
            out.println("ID: " + book.getId());
            out.println("Name: " + book.getName());
            out.println("Author: " + book.getAuthor());
            out.println("Date: " + book.getDate());
            out.println("Publisher: " + book.getPublisher());
            out.println("-------------------------");
        }

        out.flush();
        out.close();
      
    }

   
    
 private List<Book> getBooks() {
        return bfl.findAll();
}
}