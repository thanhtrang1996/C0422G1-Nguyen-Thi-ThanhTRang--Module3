<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 7/28/2022
  Time: 10:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>${title}</h2>
<form action="/CalculatorServlet" method="post">
    <table>
        <tr>
            <td>Number1 :</td>
            <td><input type="number" name="number1" placeholder=" your are number1"></td>
            <br>
        </tr>
        <tr>
            <td>Operator</td>
            <td>
                <select name="operator">
                    <option value="+">Addition</option>
                    <option value="-">Subtraction</option>
                    <option value="*">Multiplication</option>
                    <option value="/">Division</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>number2:</td>
            <td><input type="number" name="number2" placeholder=" your are number2"></td>
        </tr>
        <br>
        <tr>
            <td><input type="submit" value="Calculate"/></td>
        </tr>
    </table>
</form>
</body>
</html>
