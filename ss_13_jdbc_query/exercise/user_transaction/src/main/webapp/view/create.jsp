
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
<div class="container m-5">
    <form action="/user?action=create" method="post">
        <table class="border-1 w-75  ">
            <thead >
            <tr class="row ">
                <td><h1 class="text-center text-primary ">Create New User</h1></td>
            </tr>
            <tr class="row">
                <th class="col-lg-3">Name: </th>
                <td class="col-lg-9">
                    <input type="text" name="name" class="form-control">
                </td>
            </tr >
            <tr class="row">
                <th  class="col-lg-3">Email: </th>
                <td class="col-lg-9">
                    <input type="text" name="email" class="form-control">
                </td>
            </tr>
            <tr class="row">
                <th  class="col-lg-3">Country: </th>
                <td class="col-lg-9">
                    <input type="text" name="country" class="form-control">
                </td>
            </tr>
            <tr class="row">
                <td class="col-lg-3"></td>
                <td class="col-lg-3">
                    <a href="/user" class="btn btn-secondary">Back</a>
                </td>
                <td class="col-lg-6">
                    <button type="submit" class="btn btn-success">Submit</button>
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
