<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        body {
            background-image: url('images/library.png');
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

        a, input[type="submit"] {
            color: #ffcc00;
            text-decoration: none;
            font-weight: bold;
            background: none;
            border: none;
            font-size: 16px;
            cursor: pointer;
        }

        a:hover, input[type="submit"]:hover {
            text-decoration: underline;
        }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Page</title>
    </head>
    <body>
        <div>
            <h1>Library Management System</h1>
            <p>Please select one of the following options:</p>
            <ol>
                <li><a href="addVisitor.html">Add Visitor</a></li>
                <li><a href="addBook.jsp">Add Book</a></li>
                <li><a href="LendBook.jsp">Lend Book</a></li>
                <li><a href="RemoveBook.jsp">Remove Book</a></li>
                <li><a href="RemoveVisitor.jsp">Remove Visitor</a></li>
                <li><a href="editVisitor.jsp">Edit Visitor</a></li>
                <li><a href="loggedVisitorsServlet">See Logged Visitors</a></li>
                <li><a href="availableBooksServlet">See Available Books</a></li>
                <li>
                    <form action="DownloadSystemReportServlet" method="post">
                        <input type="submit" value="Download System Report"/>
                    </form>
                </li>
            </ol>
        </div>
    </body>
</html>
