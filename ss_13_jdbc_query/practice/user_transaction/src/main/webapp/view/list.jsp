<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 8/2/2022
  Time: 10:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User list</title>
</head>
<body>
<form action="/UserServlet" method="get">
  <a href="/UserServlet?action=insert">Insert new User</a>
  <a href="/UserServlet?action=insert1">Insert new User1</a>
<table border="1">
    <tr>
        <td>id</td>
        <td>name</td>
        <td>email</td>
        <td>country</td>
        <th>Detail</th>
    </tr>
    <c:forEach items="${userList}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.country}</td>
            <td>
                <a href="/UserServlet?action=detail&id=${user.id}">Detail</a>
            </td>

        </tr>
    </c:forEach>
</table>
</form>
</body>
</html>
