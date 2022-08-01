
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Create</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../style/bootstrap/normalize.css">
    <link rel="stylesheet" href="../style/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="../style/datatables/css/dataTables.bootstrap4.min.css"/>
</head>
<body>
<div class="container " align="center">
    <h1>Create new user</h1>
    <form action="/user?action=create" method="post">
        <table>
            <thead>
            <tr>
                <th>Name: </th>
                <td>
                    <input type="text" name="name" class="form-control">
                </td>
            </tr>
            <tr>
                <th>Email: </th>
                <td>
                    <input type="text" name="email" class="form-control">
                </td>
            </tr>
            <tr>
                <th>Country: </th>
                <td>
                    <input type="text" name="country" class="form-control">
                </td>
            </tr>
            <tr>
                <td>
                    <a href="/user" class="btn btn-outline-secondary">Back</a>
                </td>
                <td>
                    <button type="submit" class="btn btn-outline-success">Submit</button>
                </td>
            </tr>
            </thead>
        </table>
    </form>
</div>
<script src="../style/jquery/jquery-3.5.1.min.js"></script>
<script src="../style/datatables/js/jquery.dataTables.min.js"></script>
<script src="../style/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="../style/bootstrap/bootstrap.bundle.min.js"></script>
</body>
</html>
</html>
