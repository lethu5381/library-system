/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Lenovo
 */
public class LibrianLoginServlet extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String pswd = request.getParameter("pswd");
        
        if(name.equals("Freedom" ) && pswd.equals("123")){
        
            RequestDispatcher disp = request.getRequestDispatcher("freedomOutcome.jsp");
             disp.forward(request, response);
             
        }else if(name.equals("Lwandiso" ) && pswd.equals("456")){
        
            RequestDispatcher disp = request.getRequestDispatcher("lwandisoOutcome.jsp");
             disp.forward(request, response);
             
        }else if(name.equals("Lethu" ) && pswd.equals("789")){
        
             RequestDispatcher disp = request.getRequestDispatcher("lethuOutcome.jsp");
             disp.forward(request, response);
        } else {
            RequestDispatcher disp = request.getRequestDispatcher("errorPageOutcome.jsp");
             disp.forward(request, response);
            
    }

    }

}
