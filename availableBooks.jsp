<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entity.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Available Books Page</title>

    <style>
        body {
            background-image: url('images/library.png');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            font-family: Arial, sans-serif;
            color: #f0f0f0;
            text-align: center;
            padding-top: 50px;
        }

        .content-wrapper {
            background-color: rgba(0, 0, 0, 0.75);
            padding: 40px;
            border-radius: 12px;
            width: 90%;
            margin: auto;
        }

        h1, p {
            color: #ffcc00;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
            color: #f0f0f0;
            background-color: rgba(255, 255, 255, 0.05);
        }

        th, td {
            border: 1px solid #555;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: rgba(255, 255, 255, 0.1);
        }

        a, button {
            color: #ffcc00;
            text-decoration: none;
            font-weight: bold;
            background: none;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }

        a:hover, button:hover {
            text-decoration: underline;
        }

        .menu-links {
            margin-top: 30px;
        }

        .menu-links li {
            list-style: none;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="content-wrapper">
        <h1>View All Books</h1>
        <%
            List<Book> books = (List<Book>) request.getAttribute("books");
        %>

        <p>Below are the details of the books:</p>
        <table>
            <tr>
                <th>#</th>
                <th>ID</th>
                <th>Author</th>
                <th>Name</th>
                <th>Date</th>
                <th>Publisher</th>
            </tr>
            <%
                if (books != null && !books.isEmpty()) {
                    for (int i = 0; i < books.size(); i++) {
                        Book book = books.get(i);
            %>
            <tr>
                <td><%= i + 1 %></td>
                <td><%= book.getId() %></td>
                <td><%= book.getAuthor() %></td>
                <td><%= book.getName() %></td>
                <td><%= book.getDate() %></td>
                <td><%= book.getPublisher() %></td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="6">No books found.</td>
            </tr>
            <% } %>
        </table>

        <!-- Download form -->
        <form method="post" action="DownloadBooksServlet">
            <button type="submit">Download All Book Records</button>
        </form>

        <div class="menu-links">
            <ul>
                <li><a href="visitorMenu.jsp">Menu Page</a></li>
                <li><a href="index.html">Home Page</a></li>
            </ul>
        </div>
    </div>
</body>
</html>
