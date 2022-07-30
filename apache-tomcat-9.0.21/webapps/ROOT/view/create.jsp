<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 7/29/2022
  Time: 11:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Product Create</title>
</head>
<body>
<h2>Create new product</h2><br>
<a href="/products">Back to home page</a>
<fieldset>
    <legend>Create new product</legend>
<form action="/products?action=create" method="post">
    <span>ID Product  : </span>
    <input type="text" name ="id" ><br><br>
    <span>Name Product  :</span>
    <input type="text" name="name" ><br><br>
    <span>Price Product  :</span>
    <input type="text" name="price"><br><br>
    <span>Description Product  :</span>
    <input type="text" name="description" ><br><br>
 <span>Producer Product  :</span>
    <input type="text" name="producer"><br><br>
    <input type="submit" value="aad new product">
</form>
<c:if test="${message != null}">
    <p>${message}</p>
</c:if>
</fieldset>
</body>
</html>
