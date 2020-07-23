<%--
  Created by IntelliJ IDEA.
  User: Sanych
  Date: 23.07.2020
  Time: 22:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>БД Пользователей - Пользователь добавлен</title>
</head>
<body>
<div style="text-align: center;">
    <h2>Вернуться на страницу списка пользователей</h2>
    <h2>
        <form action="${pageContext.request.contextPath}/users" method="GET">
            <input type="submit" value="Список пользователей">
        </form>
    </h2>
</div>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>Добавлен пользователь:</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Password</th>
            <th>Email</th>
        </tr>
        <c:forEach var="user" items="${addedUser}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.password}"/></td>
                <td><c:out value="${user.email}"/></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>