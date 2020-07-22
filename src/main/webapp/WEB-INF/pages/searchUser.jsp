<%--
  Created by IntelliJ IDEA.
  User: Sanych
  Date: 23.07.2020
  Time: 0:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>БД Пользователей - Поиск</title>
</head>
<body>
<div style="text-align: center;">
    <h1><tr><td><caption>Поиск пользователя по ID</caption></td></tr>
        <tr><td><b>Ведите ID:</b></td></tr>
        <td><input type="number" name="id" value="Search"
                   value="<c:out value='${users.id}' />"
        /></td>
        <tr><td><input  type="submit"  value="Поиск пользователя по ID"></td></tr>
</h1>
</div>

</body>
</html>
