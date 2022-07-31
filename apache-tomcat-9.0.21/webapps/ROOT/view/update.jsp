<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Product update</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../style/bootstrap/normalize.css">
    <link rel="stylesheet" href="../style/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="../style/datatables/css/dataTables.bootstrap4.min.css"/>
</head>
<body>
<div class="container" align="center">
    <form action="/products?action=update" method="post" class="border border-5 p-3 border-danger w-50 ">
        <fieldset>
            <legend class="text-warning  btn btn-primary text-uppercase"><h2>Product update</h2></legend>
            <br>
            <table >
                <tr>
                    <th>
                        <label for="id" class="form-label">
                            Product Id :
                        </label>
                    </th>
                    <td>
                        <input type="text" id="id" readonly value="${product.id}" name="id" class="form-control">
                    </td>
                </tr>
                <tr>
                    <th>
                        <label for="name" class="form-label">
                            Product Name :
                        </label>
                    </th>
                    <td>
                        <input type="text" id="name" name="name" value="${product.name}" class="form-control">
                    </td>
                </tr>
                <tr>
                    <th>
                        <label for="price" class="form-label">
                            Product Price :
                        </label>
                    </th>
                    <td>
                        <input type="text" id="price" name="price" value="${product.price}" class="form-control">
                    </td>
                </tr>
                <tr>
                    <th>
                        <label for="description" class="form-label">
                            Product Description :
                        </label>
                    </th>
                    <td>
                        <input type="text" id="description" name="description" value="${product.description}"
                               class="form-control">
                    </td>
                </tr>
                <tr>
                    <th>
                        <label for="producer" class="form-label">
                            Product Producer :
                        </label>
                    </th>
                    <td>
                        <input type="text" id="producer" name="producer" value="${product.producer}"
                               class="form-control">
                    </td>
                </tr>
                <tr class="text-center">
                    <td>
                        <a href="/products" class="btn btn-info">Back</a>
                    </td>
                    <td>
                        <input type="submit" value="Save" class="btn btn-danger">
                    </td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
</body>
</html>
