<%-- 
    Document   : displayRecords
    Created on : Nov 3, 2015, 4:52:40 PM
    Author     : Emma Lynch
--%>

<%@page import="java.util.List, model.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Phoebe's Library</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="mystyle.css">
    </head>
    <body>
        <h1><a href="home.html">Phoebe's Library</a></h1>
        <h2>Book Report</h2>
        <%
            List<Book> mydata = (List<Book>) request.getAttribute("mydata");
            out.println("<table>");
            for (Book book : mydata) {
                out.println(book.inHTMLRowFormat());
            }
            out.println("</table>");
        %>
    </body>
</html>
