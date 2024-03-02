<%-- 
    Document   : attendance
    Created on : 26 thg 2, 2024, 17:10:09
    Author     : hoang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <style>
            table, th, td {
            border: 1px solid black;
            }
        </style>
        <form action="attendance" method="POST">
        <table>
            <tr>
                <th>NO.</th>
                <th>GROUP</th>
                <th>CODE</th>
                <th>NAME</th>
                <th>IMG</th>
                <th>STATUS</th>
                <th>COMMENT</th>
                <th>LECTURER</th>
                <th>RECORDTIME</th>
            </tr>
           
                <c:set var="no" value="0"/>
                <c:forEach items="${requestScope.listA}" var="a">
                     <tr>
                    <td><c:set var="no" value="${no+ 1}"/> ${no}</td>
                    <td>SE1817</td>
                    <td>${a.student.id}</td>
                    <td>${a.student.name}</td>
                    <td><img src="../img/avatar.jpg" alt="avatar" width="100" height="100"/></td>
                    <td>
                        <input type="radio" id="absent_${no}" name="isPresent_${a.student.id}" value="0" <c:if test="${a.isPresent == false}">checked</c:if>>
                        <label for="absent_${no}">Absent</label>
                        <input type="radio" id="present_${no}" name="isPresent_${a.student.id}" value="1" <c:if test="${a.isPresent == true}">checked</c:if>>
                        <label for="present_${no}">Present &emsp;</label>
                    </td>
                    <td>
                            <input type="text" name="desription"/>
                    </td>
                    <td>sonnt5</td>
                    <td>temp</td>
                    </tr>
                </c:forEach>
        </table>
                <input type="submit" value ="Submit"/>
                </form>
    </body>
</html>
