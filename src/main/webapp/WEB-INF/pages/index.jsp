<%--
  Created by IntelliJ IDEA.
  User: Sanych
  Date: 20.07.2020
  Time: 13:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>БД Пользователей - Начальный экран</title>
</head>
<body>
<div style="vertical-align: center; text-align:center; width:100%;">
    <h2>
        <tr>
            <form action="/users" method="GET">
                <input type="submit" value="Зайти в БД пользователей">
            </form>
        </tr>
    </h2>
</div>
</body>
</html>