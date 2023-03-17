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
                <p>${contract.getCoID()} ---- <input type="submit" value="Submit Contract"/></p>
                <input type="hidden" name="txtCoID" value="${contract.getCoID()}"
            </form>
        </c:forEach>
    </body>
</html>
