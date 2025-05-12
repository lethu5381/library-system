<%-- 
    Document   : visitorLogin
    Created on : May 6, 2025, 11:42:56 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="visitorMenu.jsp">
            Please Enter your details below to sign in:
            
            <table>
                <tr>
                    <td>visitor ID</td>
                    <td><input type="text" name="ID" required=""/></td>
                </tr>
                <tr>
                    <td> Name</td>
                    <td><input type="text" name="Name" required=""/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="next"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
