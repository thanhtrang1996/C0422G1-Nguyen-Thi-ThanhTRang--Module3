<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 8/2/2022
  Time: 10:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>Id:</th>
        <td>${user.id}</td>
    </tr>
    <tr>
        <th>Name:</th>
        <td>${user.name}</td>
    </tr>
    <tr>
        <th>Email:</th>
        <td>${user.email}</td>
    </tr>
    <tr>
        <th>Country:</th>
        <td>${user.country}</td>
    </tr>
    </thead>
</table>
</body>
</html>
