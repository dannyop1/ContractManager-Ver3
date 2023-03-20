<%-- 
    Document   : AddRoom.jsp
    Created on : Mar 20, 2023, 5:21:27 AM
    Author     : ADMIN
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="MainController" method="post">
            CID: <input type="text" value="${CID}" name="CID"/> <input type="submit" value="Search Owner"/>
            <input type="hidden" value="GetOwner" name="action"/>
        </form>
    <c:set var="roomFreeList" value="${requestScope.roomFreeList}"/>
    <c:set var="ownerList" value="${requestScope.ownerList}"/>
    <table>
        <tr>
            <td>ID</td>
            <td>Name</td>
            <td>CID</td>
            <td>Phone</td>
            <td>Room</td>
            <td>Action</td>
        </tr>
        <c:forEach var="owner" items="${ownerList}">
            <tr>
                <td>${owner.getOID()}</td>
                <td>${owner.getFullName()}</td>
                <td>${owner.getCID()}</td>
                <td>${owner.getPhoneNumber()}</td>
            <form action="MainController" method="post">
                <td>
                    <select name="RoID">
                        <c:forEach var="RoID" items="${roomFreeList}">
                            <option value="${RoID}">${RoID}</option>
                        </c:forEach>
                    </select>
                </td>
                <td><input type="submit" value="Add Room For This Owner"</td>
                <input type="hidden" value="AddRoom" name="action"/>
                <input type="hidden" value="${owner.getOID()}" name="OID"/>
                <input type="hidden" value="${CID}" name="CID"/>
            </form>
            </tr>
        </c:forEach>
        <tr>${requestScope.noti}</tr>
    </table>
</body>
</html>
