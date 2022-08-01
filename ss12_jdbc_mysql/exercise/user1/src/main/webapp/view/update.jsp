<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User update</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../style/bootstrap/normalize.css">
    <link rel="stylesheet" href="../style/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="../style/datatables/css/dataTables.bootstrap4.min.css"/>
</head>
<body>
<div class="container" align="center">
    <form action="/user?action=update" method="post">
        <table class="m-auto bg-info">
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
                    <a href="/user" class="btn btn-secondary">Back</a>
                </td>
                <td>
                    <button type="submit" class="btn btn-success">Submit</button>
                </td>
            </tr>
            </thead>
        </table>
    </form>
</div>
</body>
</html>
