<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Product Create</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../style/bootstrap/normalize.css">
    <link rel="stylesheet" href="../style/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="../style/datatables/css/dataTables.bootstrap4.min.css"/>
</head>
<body>
<div class="container " align="center">
    <form action="/products?action=create" method="post" class="border border-5 p-5 border-warning w-50 ">
        <fieldset>
            <legend class="text-danger text-uppercase"><h1>Create new product</h1></legend>
            <table>
                <tr>
                    <th>
                        <label for="id" class="form-label">
                            ID Product :
                        </label>
                    </th>
                    <td>
                        <input type="text" name="id" id="id" class="form-control">
                    </td>
                </tr>
                <tr>
                    <th>
                        <label for="name" class="form-label">
                            Name Product :
                        </label>
                    </th>
                    <td><input type="text" name="name" class="form-control" id="name"></td>
                </tr>
                <tr>
                    <th>
                        <label for="price" class="form-label">
                            Price Product :
                        </label>
                    </th>
                    <td><input type="text" name="price" class="form-control" id="price"></td>
                </tr>
                <tr>
                    <th>
                        <label for="description" class="form-label">
                            Description Product :
                        </label>
                    </th>
                    <td><input type="text" name="description" class="form-control" id="description"></td>
                </tr>
                <tr>
                    <th>
                        <label for="producer" class="form-label">
                            Producer Product :
                        </label>
                    </th>
                    <td><input type="text" name="producer" class="form-control" id="producer"></td>
                </tr>
                <tr class="text-center">
                    <td>
                        <a href="/products" class="btn btn-secondary">Back</a>
                    </td>
                    <td>
                        <input type="submit" value="Save" class="btn btn-danger text-light">
                    </td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
<script src="../style/jquery/jquery-3.5.1.min.js"></script>
<script src="../style/datatables/js/jquery.dataTables.min.js"></script>
<script src="../style/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="../style/bootstrap/bootstrap.bundle.min.js"></script>
<script>
    $(document).ready(function () {
        $('#myTable').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 3
        });
    });
</script>
</body>
</html>
