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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Users Manager</title>
</head>
<body>
<div align="center">
    <h2>Customer Manager</h2>
    <form method="get" action="search">
        <input type="text" name="keyword" />
        <input type="submit" value="Get User By ID" />
    </form>
    <h3><a href="/addUser">New User</a></h3>
    <table border="1" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Password</th>
            <th>E-mail</th>
            <th>Actions</th>
        </tr>
        <c:forEach items="${users}" var="customer">
            <tr>
                <td>${users.id}</td>
                <td>${users.name}</td>
                <td>${users.password}</td>
                <td>${users.email}</td>

                <td>
<%--                    <a href="/edit?id=${users.id}">Edit</a>--%>

                    <a href="/delete?id=${users.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>