<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 7/30/2022
  Time: 3:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product show details</title>
</head>
<body>
<p><a href="/products">Back to go home</a></p>
<fieldset>
    <legend>Product Search</legend>
    <form action="/products?action=detail" method="post">
       <p>ID Product : ${product.id}</p>
        <p>Name Product : ${product.name}</p><br>
        <p>Price Product : ${product.price}</p><br>
        <p>Description Product : ${product.description}</p><br>
        <p>Producer Product : ${product.producer}</p><br>
    </form>
</fieldset>
</body>
</html>
