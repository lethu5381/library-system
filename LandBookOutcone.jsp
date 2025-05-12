<%-- 
    Document   : LandBookOutcone
    Created on : May 5, 2025, 12:56:09 AM
    Author     : Lenovo
--%>

<%@page import="za.ac.tut.entity.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <h1>Book Available</h1>
        <%
            Book book=(Book)request.getAttribute("book");
        %>
        
        <p>
            <%=book.getName()%> <br><!-- comment -->
            Has been lend please bring it back within 7 days
            
        </p>
        <p>click <a href="index.html">here</a> to go back to menu</p>
    </body>
</html>
