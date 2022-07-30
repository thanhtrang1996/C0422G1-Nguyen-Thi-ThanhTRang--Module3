<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 7/29/2022
  Time: 10:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Product List</title>
</head>
<body>
<h2>Product List</h2>
<a href="/products?action=create">Create new product</a><br><br>
<table border="1">
    <tr style="color: crimson">
        <th>ID</th>
        <th>NAME</th>
        <th>PRICE</th>
        <th>DESCRIPTION</th>
        <th>PRODUCER</th>
        <th>EDIT PRODUCT</th>
       <th>DELETE PRODUCT</th>
    </tr>
    <c:forEach var="product" items="${product}">
        <tr>
            <td><a href="/products?action=detail&id=${product.id}">${product.id}</a></td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.description}</td>
            <td>${product.producer}</td>
            <td><a href="/products?action=update&id=${product.id}">update</a></td>
            <td><a href="/products?action=delete&id=${product.id}">delete</a></td>
        </tr>
    </c:forEach>
</table><br>
<form action="/products?action=search" method="post">
    <span>Product Name :</span>
    <input type="text" name="name" >
    <input type="submit" value="Search">
</form>
</body>
</html>
