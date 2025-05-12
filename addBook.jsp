<%-- 
    Document   : addBook
    Created on : May 5, 2025, 12:28:14 AM
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
        <title>add Book Page</title>
    </head>
    <body>
        <h1>add Book</h1>
        <form action="addBookServlet.do" method="post">
            <table>
                <tr>
                    <td>Book Name:</td>
                    <td>
                        <input type="text" name="BookName" required>
                    </td>
                </tr>
                <tr>
                    <td>Publisher:</td>
                    <td>
                        <input type="text" name="publisher" required>
                    </td>
                </tr>
                <tr>
                    <td>Author:</td>
                    <td>
                        <input type="text" name="author">
                    </td>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                    <td>
                        <input type="submit" value="Add Book">
                        
                        <p>click <a href="index.html">here</a> to go back to menu</p>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
