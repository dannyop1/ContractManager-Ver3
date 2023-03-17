<%-- 
    Document   : PendingContract
    Created on : Mar 17, 2023, 8:42:42 AM
    Author     : mical
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <c:set var="contractList" value="${requestScope.contractList}"/>
        <c:forEach var="contract" items="${contractList}">
            <form action="MainController">
                <p>${contract.getCoID()} ---- </p>
                <input type="text" name="id" value="${contract.getCoID()}">
                <input type="submit" name="action" value="Submit Contract">
                       
             </form>
        </c:forEach>
    </body>
</html>
