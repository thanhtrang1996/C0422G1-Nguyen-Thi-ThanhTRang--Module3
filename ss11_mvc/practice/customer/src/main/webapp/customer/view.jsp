<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 7/29/2022
  Time: 12:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer view</title>
</head>
<body>
<h1>Customer details</h1>
<p>
    <a href="/customers">Back to customer list</a>
</p>
<table>
    <tr>
        <td>Name: </td>
        <td>${customers.name}</td>
    </tr>
    <tr>
        <td>Email: </td>
        <td>${customers.email}</td>
    </tr>
    <tr>
        <td>Address: </td>
        <td>${customers.address}</td>
    </tr>
</table>

</body>
</html>
