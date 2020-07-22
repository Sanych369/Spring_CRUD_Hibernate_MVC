<%--
  Created by IntelliJ IDEA.
  User: Sanych
  Date: 20.07.2020
  Time: 13:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>БД Пользователей - список пользователей</title>
</head>
<body>
<div style="text-align: center;">
    <h1>Страница пользователей</h1>
</div>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>Зарегистрированные пользователи:</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Password</th>
            <th>Email</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="user" items="${userList}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.password}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td>
                    <form action="/updateForm" method="post">
                        <input type="hidden" name="id" value="${user.id}"/>
                        <input type="hidden" name="name" value="${user.name}"/>
                        <input type="hidden" name="role" value="${user.role}"/>
                        <input type="hidden" name="password" value="${user.password}"/>
                        <button type="submit">Изменить пользователя</button>
                    </form>
                </td>
                <td>
                    <form action="/delete" method="post">
                        <input type="hidden" name="userId" value="${user.id}"/>
                        <input type="hidden" name="action" value="delete"/>
                        <button type="submit">Удалить пользователя</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>