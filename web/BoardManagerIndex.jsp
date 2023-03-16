<%-- 
    Document   : BoardManagerIndex
    Created on : Mar 17, 2023, 4:25:35 AM
    Author     : mical
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
    </head>
    <body>
        <h1>Welcome, ${sessionScope.user.getFullName()}</h1>
        <c:set var="user" value="${sessionScope.user}"></c:set>
        <c:if test="${user.getBID() != null}">
            <form action="MainController" method="POST">
                <input type="submit" value="Log out" name="action" />
            </form>
            ${requestScope.ownerAvailable}
            ${requestScope.ownerUnavailable}
            ${requestScope.customerAvailable}
            ${requestScope.customerUnavailable}
            ${requestScope.residentAvailable}
            ${requestScope.residentUnavaiable}
            ${requestScope.contractAvaiable}
            ${requestScope.contractUnavaiable}
            ${revenue}
            <a href="MainController?action=View+Profile">Profile</a>
        </c:if>

        <c:if test="${user.getBID() == null}">
            <h1>Access Denied</h1>
            <a href="LoginIndex.jsp">Back to login page</a>
        </c:if>
    </body>
</html>
