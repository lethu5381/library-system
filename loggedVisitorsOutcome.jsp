<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entity.Visitor"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>    <style>
            
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
        <title>User Menu</title>
    </head>
    <body>
    <h1>Welcome To Our Library</h1>
    <p>Please choose an option below</p>

    <div class="dropdown">
        <button class="dropbtn">Library Menu</button>
        <div class="dropdown-content">
            <a href="availableBooksServlet">See Available Books</a>
            <a href="findBookServlet">Search a Book</a>
            <a href="lendBook.jsp">Borrow a Book</a>
        </div>
    </div>

    <style>
        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropbtn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            cursor: pointer;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 200px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover {
            background-color: #f1f1f1;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .dropdown:hover .dropbtn {
            background-color: #3e8e41;
        }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>See Logged Visitors Page</title>
        <style>
            table {
                width: 100%;
                border-collapse: collapse;
            }
            th, td {
                padding: 10px;
                border: 1px solid #ddd;
                text-align: left;
            }
            th {
                background-color: #f4f4f4;
            }
        </style>
    </head>
    <body>
        <h1>Find Book Outcome</h1>
        
        <%
            List<Visitor> visitors = (List<Visitor>) request.getAttribute("visitors");
        %>
        
        <p>Below are the details of the book</p>
        
        <table>
            <tr>
                <th>ID</th>
                <th>Index</th>
                <th>Name</th>
                <th>Email</th>
                <th>Date</th>
            </tr>
            
            <%
                if (visitors != null && !visitors.isEmpty()) {
                    for (int i = 0; i < visitors.size(); i++) {
                        Visitor visitor = visitors.get(i);
            %>
            <tr>
                <td><%= visitor.getId() %></td>
                <td><%= i + 1 %></td>
                <td><%= visitor.getName() %></td>
                <td><%= visitor.getEmail() %></td>
                <td><%= visitor.getDate() != null ? visitor.getDate() : "No Date Available" %></td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="5">No visitor found</td>
            </tr>
            <%
                }
            %>
        </table>

        <!-- Download form -->
        <form method="post" action="DownloadVisitorsServlet">
            <button type="submit">Download All Visitor Records</button>
        </form>

        <p><a href="menu.jsp">Menu Page</a></p>
        <p><a href="index.html">Home Page</a></p>

    </body>
</html>
