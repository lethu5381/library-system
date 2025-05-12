<%-- 
    Document   : RemoveBook
    Created on : May 5, 2025, 1:29:35 AM
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
        <title>Remove Book Page</title>
    </head>
    
    <body>
        <h1>Remove Book</h1>
        <p>Remove Book using ID</p>
        <form action="RemoveBookServlet.do" method="post">
            <table>
                <tr>
                    <td>Book ID</td>
                    <td>
                        <input type="number" name="id">
                    </td>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                    <td>
                        <input type="submit" value="Remove">
                    </td>
                </tr>
            </table>
            <p>click <a href="index.html">here</a> to go back to menu</p>
        </form>
    </body>
</html>
