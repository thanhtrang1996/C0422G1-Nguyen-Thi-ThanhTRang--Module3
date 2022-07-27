<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 7/27/2022
  Time: 8:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Discount Amount</title>
</head>
<body>
<h1>This is my index page!</h1>
<form action="/DiscountServlet" method="post">

    <input type="text" name="description" placeholder="description">
    <input type="text" name="listPrice" placeholder="list price">
    <input type="text" name="discountPercent" placeholder="Discount Percent">

    <button type="submit" value="result">Calculate Discount</button>

    <h4>Description : ${Description}</h4>
    <h4>DiscountAmount : ${DiscountAmount}</h4>
    <h4>DiscountPrice : ${DiscountPrice}</h4>

</form>
</body>
</html>
