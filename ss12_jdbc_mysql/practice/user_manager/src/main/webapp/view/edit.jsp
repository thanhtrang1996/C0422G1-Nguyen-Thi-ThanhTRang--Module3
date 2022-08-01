<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 7/31/2022
  Time: 11:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<h1>Edit new user</h1>
<form action="/users?action=edit" method="post">
    <table>
        <thead>
        <input type="hidden" name="id" value="${user.id}">
        <tr>
            <th>Name: </th>
            <td>
                <input type="text" name="name" class="form-control" value="${user.name}">
            </td>
        </tr>
        <tr>
            <th>Email: </th>
            <td>
                <input type="text" name="email" class="form-control" value="${user.email}">
            </td>
        </tr>
        <tr>
            <th>Country: </th>
            <td>
                <input type="text" name="country" class="form-control" value="${user.country}">
            </td>
        </tr>
        <tr>
            <td>
                <a href="/users" class="btn btn-outline-secondary">Back</a>
            </td>
            <td>
                <button type="submit" class="btn btn-outline-success">Submit</button>
            </td>
        </tr>
        </thead>
    </table>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
