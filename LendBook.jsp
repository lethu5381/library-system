<%-- 
    Document   : LendBook
    Created on : May 5, 2025, 12:11:38 AM
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
        <title>Land Book Page</title>
    </head>
    <body>
        <h1>Land Book</h1>
        <p>
            Enter ID of a book you want to lend
        </p>
        <form action="LandBookServlet.do" method="get">
            <table>
                <tr>
                    <td>Book ID</td>
                    <td>
                        <input type="text" name="bookName">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Lend"
                               
                    </td>
                </tr>
            </table>
            <p><a href="index.html"</a><b>back to menu</b></p>
        </form>
    </body>
</html>
