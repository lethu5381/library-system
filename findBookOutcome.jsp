<%-- 
    Document   : findBookOutcome
    Created on : May 8, 2025, 3:59:38 PM
    Author     : Lenovo
--%>

<%@page import="java.util.Date"%>
<%@page import="za.ac.tut.entity.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>find book Page</title>
    </head>
     <style>
            
            body {
                background-image: url('images/library.png'); /* Adjust path if needed */
                background-size: cover;
                background-repeat: no-repeat;
                background-position: center;
                font-family: Arial, sans-serif;
                color: white;
                text-align: center;
                padding-top: 100px;
            }

            div {
                background-color: rgba(0, 0, 0, 0.6);
                display: inline-block;
                padding: 30px;
                border-radius: 10px;
            }

            a {
                color: #ffcc00;
                text-decoration: none;
                font-weight: bold;
            }

            a:hover {
                text-decoration: underline;
            }
        </style>
    <body>
        <h1> Find Book outcome</h1>
        
        <%
            Book book = (Book)request.getAttribute("book");
            Long id =  book.getId();
            String name = book.getName();
            String author = book.getAuthor();
            Date date = book.getDate();
            String publisher = book.getPublisher();
            
            %>
            
            <p>Below are the details of the book</p>
            
            <table>
                
                <tr>
                    <td>ID</td>
                     <td><input type="text" value="<%=id%>" readonly=""/></td>
                </tr>
                tr>
                    <td>NAME</td>
                     <td><input type="text" value="<%=name%>" readonly=""/></td>
                </tr>
                tr>
                    <td>DATE</td>
                     <td><input type="text" value="<%=date%>" readonly=""/></td>
                </tr>
                tr>
                    <td>AUTHOR</td>
                    <td><input type="text" value="<%=author%>" readonly=""/></td>
                </tr>
                tr>
                    <td>PUBLISHER</td>
                     <td><input type="text" value="<%=publisher%>" readonly=""/></td>
                </tr>
            </table>
                
                
                <p><a href="menu.jsp"> Menu page</a></p>
                <p><a href="index.html">Home page</a></p>
                
            
    </body>
</html>
