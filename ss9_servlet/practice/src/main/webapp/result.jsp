<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 7/27/2022
  Time: 11:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>result</title>
</head>
<body>
<h2>Currency Converter</h2>
<form action="/MoneyServlet" method="post">
    <label>Rate: </label><br/>
    <input type="text" name="rate" placeholder="RATE" value="22000"/><br/>
    <label>USD: </label><br/>
    <input type="text" name="usd" placeholder="USD" value="0"/><br/>
    <input type = "submit" id = "submit" value = "Converter"/>

    <p>Rate:${Rate}</p>
    <p>USD :${USD}</p>
    <p>VND :${VND}</p>
</form>
</body>
</html>
