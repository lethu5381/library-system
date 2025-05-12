<%-- 
    Document   : ViewBook
    Created on : May 5, 2025, 12:14:00 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Book Page</title>
    </head>
    <body>
        <h1>View Book</h1>
        
        <form action="ViewBookServlet.do" method="get">
            <table>
                <tr>
                    <td>
                        <input type="submit" value="View Available Books">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
