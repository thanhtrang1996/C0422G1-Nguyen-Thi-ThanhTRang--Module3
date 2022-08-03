<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 8/2/2022
  Time: 11:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <form method="post">
    <thead>

    <tr>
        <th>Name:</th>
        <td><input type="text" name = 'name'></td>
    </tr>
    <tr>
        <th>Email:</th>
        <td><input type="text" name = "email"></td>
    </tr>
    <tr>
        <th>Country:</th>
        <td><input type="text" name = "country"></td>
    </tr>
    <tr>
        <td>
        <button type="submit" name="action" value="insert">Save</button>
    </td>
    </tr>
    </thead>
    </form>
</table>
</body>
</html>
