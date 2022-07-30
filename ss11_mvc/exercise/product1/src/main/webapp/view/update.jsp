<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 7/30/2022
  Time: 8:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Product update</title>
</head>
<body>
<h2>Product update</h2>
<a href="/products">Back to page home</a><br>
<fieldset>
    <legend>Product update</legend>
<form action="/products?action=update" method="post">
    <input type="text" readonly value="${product.id}" name="id"><br><br>
    <span>Product Name  :</span><input type="text" name ="name" value="${product.name}"><br><br>
    <span>Product Price :</span><input type="text" name="price" value="${product.price}"><br><br>
    <span>Product Description :</span><input type="text" name="description" value="${product.description}"><br><br>
    <span>Product Producer :</span><input type="text" name="producer" value="${product.producer}"><br><br>
    <input type="submit" value="Successfully updated">
</form>
   <c:if test="${message != null}">
       <p>${message}</p>
   </c:if>
</fieldset>
</body>
</html>
