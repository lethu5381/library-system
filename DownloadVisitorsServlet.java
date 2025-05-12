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
import za.ac.tut.entity.Visitor;
import za.ac.tut.entity.bl.VisitorFacadeLocal;

/**
 *
 * @author Lenovo
 */
public class DownloadVisitorsServlet extends HttpServlet {
    @EJB
   private VisitorFacadeLocal vfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
               // Fetch the list of visitors from the database (or passed from the JSP)
        List<Visitor> visitors = vfl.findAll();

        // Set content type to CSV
        response.setContentType("text/csv");
        String filename = "visitors_" + System.currentTimeMillis() + ".csv";
        response.setHeader("Content-Disposition", "attachment; filename=\"" + filename + "\"");

        // Create a PrintWriter to write the response
        PrintWriter writer = response.getWriter();

        // Write the CSV headers
        writer.println("ID,Name,Email,Date");

        // Write each visitor's information to the CSV
        for (Visitor visitor : visitors) {
            writer.println(visitor.getId() + "," + visitor.getName() + "," + visitor.getEmail() + "," + visitor.getDate());
        }

        // Close the writer (response will be sent to the client)
        writer.flush();
    }
    }

  
  


