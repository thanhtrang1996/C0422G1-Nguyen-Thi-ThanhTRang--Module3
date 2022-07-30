<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 7/30/2022
  Time: 11:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Product Delete</title>
</head>
<body>
<fieldset>
    <legend>Product Delete</legend>
    <form action="/products?action=delete&id=${product.id}" method="post">
        <p>ID Product : ${product.id}</p><br>
        <p>Name Product : ${product.name}</p><br>
        <p>Price Product : ${product.price}</p><br>
        <p>Description Product : ${product.description}</p><br>
        <p>Producer Product : ${product.producer}</p><br>
        <input type="submit" value="Delete">
    </form>
    <c:if test="${message != null}">
        <p>${message}</p>
    </c:if>
</fieldset>
</body>
</html>
