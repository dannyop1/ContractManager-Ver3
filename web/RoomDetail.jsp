<%-- 
    Document   : RoomDetail
    Created on : Mar 20, 2023, 6:15:31 AM
    Author     : mical
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
        <h1>Room Info</h1>
        <c:set var="roomList" value="${requestScope.roomList}"/>
        <c:set var="imgList" value="${requestScope.imgList}"/>
        <form action="MainController" method="post">
            <select name="RoID">
                <c:forEach var="RoID" items="${roomList}">
                    <option value="${RoID}">${RoID}</option>
                </c:forEach>
            </select>
            <input type="hidden" value="GetRoomForImg" name="action"/>
            <input type="submit" value="Search Room"/>
        </form>
        <h3>Room Image(s)</h3>
        <c:forEach var="img" items="${imgList}">
            <img src="room_images/${img}" width="200px" height="200px"/> : 
            <form action="MainController" method="post">
                <input type="submit" name="action" value="Delete this picture">
                <input type="hidden" name="img" value="${img}">
                <input type="hidden" name="RoID" value="${requestScope.thisRoID}">
            </form>
            <br/> 
        </c:forEach>
        <p>${requestScope.imgListNoti}</p>
        <c:if test="${requestScope.thisRoID != null}">
            <form method="post" action="AddRoomPictureServlet?RoID=${requestScope.thisRoID}" enctype="multipart/form-data">
                <input type="file" name="picture" multiple>
                <input type="submit" value="Upload">
            </form>
        </c:if>
        <img src="room_images/1679293871760.png" width="220px" height="220px"/>
        <br/>
    </body>
</html>
