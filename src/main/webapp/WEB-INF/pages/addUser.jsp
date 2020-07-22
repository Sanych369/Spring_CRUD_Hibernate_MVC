<%--
  Created by IntelliJ IDEA.
  User: Sanych
  Date: 22.07.2020
  Time: 20:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>БД Пользователей - добавление</title>
</head>
<body>
<div style="text-align: center;">
    <h1>Вернуться на страницу списка пользователей</h1>
    <h2>
        <form action="/users" method="GET">
            <input type="submit" value="Список пользователей">
        </form> &nbsp;&nbsp;&nbsp;
    </h2>
</div>
<div align="center">
    <form action="/add" method="POST" accept-charset="UTF-8">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Добавить нового пользователя
                </h2>
            </caption>
            <tr>
                <th>User Name:</th>
                <td>
                    <input type="text" name="name" size="45"
                    />
                </td>
            </tr>
            <tr>
                <th>User Password:</th>
                <td>
                    <input type="text" name="password" size="45"
                    />
                </td>
            </tr>
            <tr>
                <th>User Email:</th>
                <td>
                    <input type="text" name="email" size="45"
                    />
                </td>
            </tr>
            <td colspan="2" align="center">
                <input type="submit" value="Добавить пользователя"/>
            </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
