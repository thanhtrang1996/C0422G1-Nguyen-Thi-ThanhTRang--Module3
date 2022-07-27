<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 7/27/2022
  Time: 5:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>result</title>
</head>
<body>
<form action="/exerciseServlet" method="post">
    <input type="text" name="description" placeholder="description">
    <input type="text" name="list price " placeholder="list price">
    <input type="text" name="Discount Percent" placeholder="Discount Percent">
    <button type="submit" value="result">Calculate Discount</button>
    <h3>Description : ${Description}</h3>
    <h3>DiscountAmount : ${DiscountAmount}</h3>
    <h3>DiscountPrice : ${DiscountPrice}</h3>

</form>

</body>
</html>
