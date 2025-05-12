<%-- 
    Document   : librian
    Created on : May 6, 2025, 11:14:20 PM
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
        <title>Librian Page</title>
    </head>
    <h1>Enter Valid Details</h1>
    <body>
        <form action="LibrianLoginServlet.do" method="POST">
            <table>
                <tr>
                    <td>username:</td>
                    <td><input type="text" name="name" required=""></td>
                </tr>
                <tr>
                    <td>passwd:</td>
                    <td><input type="password" name="pswd" required=""></td>
                </tr>
                 <tr>
                    <td></td>
                    <td><input type="submit" value="SUBMIT" required=""></td>
                </tr>
            </table>
        </form>
        <p> Click<a href="index.html">here</a>to return to Menu</p>
    </body>
</html>
