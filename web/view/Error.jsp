<%-- 
    Document   : error
    Created on : 09 23, 16, 12:36:01 PM
    Author     : mariellelapidario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String error = (String) request.getAttribute("Error");%>
        <h1><%=error%></h1>
        
    </body>
</html>