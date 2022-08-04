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
<div class="container m-5">
    <form action="/user?action=update" method="post">
        <table class="border-3  w-75  ">
            <thead>
            <tr class="row">
                <h1 class=" col-lg-12 text-danger text-center">Update User</h1>
            </tr>
            <tr class="row">
                <th class="col-lg-3">ID User :</th>
                <td class="col-lg-9"> <input type="text" class="form-control" name="id" value="${user.id}" ></td>

            </tr>
            <tr  class="row">
                <th class="col-lg-3">Name User: </th>
                <td class="col-lg-9">
                    <input type="text" name="name" class="form-control" value="${user.name}">
                </td>
            </tr>
            <tr  class="row">
                <th  class="col-lg-3">Email User: </th>
                <td class="col-lg-9">
                    <input type="text" name="email" class="form-control" value="${user.email}">
                </td>
            </tr>
            <tr  class="row">
                <th  class="col-lg-3">Country User: </th>
                <td class="col-lg-9">
                    <input type="text" name="country" class="form-control" value="${user.country}">
                </td>
            </tr>
            <tr class="row">
                <td  class="col-lg-3"></td>
                <td class="col-lg-3" >
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
</body>
</html>
