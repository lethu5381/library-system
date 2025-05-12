<%-- 
    Document   : removeVisitor
    Created on : May 8, 2025, 3:04:07 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Visitor Page</title>
    </head>
    <body>
        <h1>Remove Visitor</h1>
        
        
        <p>Enter visitor ID that you want to remove</p>
        
        <form action="removeVisitorServlet" method="POST">
            <table>
                
                <tr>
                    <td>Enter ID :</td>
                    <td><input type="text" name="id" required=""/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Remove"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
