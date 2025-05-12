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
import za.ac.tut.entity.Visitor;
import za.ac.tut.entity.bl.BookFacadeLocal;
import za.ac.tut.entity.bl.VisitorFacadeLocal;

public class DownloadSystemReportServlet extends HttpServlet {

    @EJB
    private BookFacadeLocal bfl;

    @EJB
    private VisitorFacadeLocal vfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Book> books = bfl.findAll();
        List<Visitor> visitors = vfl.findAll();

        response.setContentType("text/plain");
        String filename = "system_report_" + System.currentTimeMillis() + ".txt";
        response.setHeader("Content-Disposition", "attachment; filename=\"" + filename + "\"");

        PrintWriter out = response.getWriter();

        out.println("=== SYSTEM REPORT ===\n");

        out.println("=== BOOK RECORDS ===");
        for (Book book : books) {
            out.println("ID: " + book.getId());
            out.println("Name: " + book.getName());
            out.println("Author: " + book.getAuthor());
            out.println("Date: " + book.getDate());
            out.println("Publisher: " + book.getPublisher());
            out.println("-------------------------");
        }

        out.println("\n=== VISITOR RECORDS ===");
        for (Visitor visitor : visitors) {
            out.println("ID: " + visitor.getId());
            out.println("Name: " + visitor.getName());
            out.println("Email: " + visitor.getEmail());
            out.println("Date: " + visitor.getDate());
            out.println("-------------------------");
        }

        out.flush();
        out.close();
    }
}
