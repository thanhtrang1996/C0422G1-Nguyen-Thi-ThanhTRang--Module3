
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Product Search</title>
</head>
<body>
<table border="1">
    <tr style="color: crimson">
        <th>ID</th>
        <th>NAME</th>
        <th>PRICE</th>
        <th>DESCRIPTION</th>
        <th>PRODUCER</th>
    </tr>

    <c:forEach var="product" items="${product}">

        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.description}</td>
            <td>${product.producer}</td>
        </tr>

    </c:forEach>
</table>
</body>
</html>
