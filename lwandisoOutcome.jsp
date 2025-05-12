<%-- 
    Document   : menu
    Created on : May 6, 2025, 11:06:58 PM
    Author     : Lenovo
--%>

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
        <title>Menu Page</title>
    </head>
    <body>
        <div>
            <h1>Welcome Lwandiso</h1>
            <h2>Library Management System</h2>
            <p>Please select one of the following option</p>
            <ol>
                
                 <li><a href="addVisitor.html">Add Visitor</a></li>
                <li><a href="addBook.jsp">Add Book</a></li>
                <li><a href="LendBook.jsp">Lend Book</a></li>
                <li><a href="RemoveBook.jsp">Remove book</a></li>
                <li><a href="removeVisitor.jsp">Remove visitor</a></li>
                <li><a href="loggedVisitorsServlet">See logged visitors</a></li>
               <li><a href="availableBooksServlet">See available books</a></li>
            </ol>
             <form action="DownloadSystemReportServlet" method="post">
                        <input type="submit" value="Download System Report"/>
                    </form>
        </div>
        <p><a href="index.html">LogOut</a></p>
    </body>
</html>
