<%-- 
    Document   : getReportByDateRange.jsp
    Created on : Nov 19, 2015, 4:27:29 PM
    Author     : Emma Lynch
--%>

<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Phoebe's Library</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="mystyle.css">

        <!-- JQuery UI code to implement a datepicker control -->
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <script>
            $(function () {
                // Note the Java 8 code to set datepicker to one month ago.
                $("#begindatepicker").datepicker({dateFormat: "yy-mm-dd"})
                        .datepicker("setDate", "<%= LocalDate.now().plusMonths(-1)%>");
            });
            $(function () {
                $("#enddatepicker").datepicker({dateFormat: "yy-mm-dd"})
                        .datepicker("setDate", new Date());
            });
        </script>
    </head>
    <body>
        <h1><a href="home.html">Phoebe's Library</a></h1>
        <h2>Book Report</h2>
        <form action="retrieve" method="get">

            Email: <input type="text" name="email" size="70"
                          placeholder="Enter borrower's email address or leave blank to view all borrowers">
            <br><br>

            Start Date: <input type="text" name="startdate" id="begindatepicker" size="30" required>
            <br><br>

            End Date: <input type="text" name="enddate" id="enddatepicker" size="30" required>
            <br><br>

            <input type='radio' name='lowhigh' value='all' checked>All records
            <input type='radio' name='lowhigh' value='low'>Just Lows
            <input type='radio' name='lowhigh' value='high'>Just Highs
            <input type='radio' name='lowhigh' value='lowhigh'>Just Lows and Highs
            <br><br>

            <input type="hidden" name="action" value="report">

            <input type="submit" name="submit" value="Submit">
            <br><br>
        </form>
    </body>
</html>