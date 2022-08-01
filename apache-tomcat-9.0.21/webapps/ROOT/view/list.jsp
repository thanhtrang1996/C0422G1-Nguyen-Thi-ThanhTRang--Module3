<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Product List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../style/bootstrap/normalize.css">
    <link rel="stylesheet" href="../style/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="../style/datatables/css/dataTables.bootstrap4.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>
    <link rel="stylesheet" href="../style/style.css">
</head>
<body>
<div class="container">
    <h1 class="text-center text-red fw-bold text-uppercase">
        Product List
    </h1>
    <a href="/products?action=create" class="btn btn-success m-auto">Create new product</a><br><br>
    <form action="/products?action=search" method="get">
        <label for="search" class="text-primary"><b>Product Name</b></label>
        <input type="text" name="name" id="search" class="form-control w-25 d-inline-block" value="${name}">
        <button type="submit" class="btn btn-primary d-inline-block">
            <i class="bi bi-search" style="font-size: 24px"></i>
        </button>
    </form>
    <table class="table table-hover text-center" id="myTable">
        <thead>
        <tr class="bg-a text-light">
            <th>ID</th>
            <th>NAME</th>
            <th>PRICE</th>
            <th>DESCRIPTION</th>
            <th>PRODUCER</th>
            <th>EDIT</th>
            <th>DELETE</th>
            <th>DETAIL</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="product" items="${product}">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.price}</td>
                <td>${product.description}</td>
                <td>${product.producer}</td>
                <td><a href="/products?action=update&id=${product.id}" class="btn btn-warning"><i class="bi bi-pencil"
                                                                                                  style="font-size: 30px"></i></a>
                </td>
                <td>
                    <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                            data-bs-target="#myModalDelete${product.id}">
                        <i class="bi bi-trash" style="font-size: 30px"></i>
                    </button>

                    <!-- The Modal -->
                    <div class="modal " id="myModalDelete${product.id}">
                        <div class="modal-dialog">
                            <div class="modal-content">

                                <!-- Modal Header -->
                                <div class="modal-header bg-danger">
                                    <h1 class="modal-title text-light m-auto">Warning</h1>
                                </div>
                                <form action="/products" method="get">
                                    <!-- Modal body -->
                                    <div class="modal-body">
                                        <p class="h3 text-warning fw-bold">Do you want delete product ?</p>
                                        <input type="hidden" value="${product.id}" name="id" readonly>
                                        <input type="hidden" value="delete" name="action" readonly>
                                        <p>Name Product : ${product.name}</p>
                                        <p>Price Product : ${product.price}</p>
                                        <p>Description Product : ${product.description}</p>
                                        <p>Producer Product : ${product.producer}</p>
                                    </div>

                                    <!-- Modal footer -->
                                    <div class="modal-footer">
                                        <button class="btn btn-success" type="submit">Accept</button>
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </td>
                <td>
                    <button type="button" class="btn btn-info" data-bs-toggle="modal"
                            data-bs-target="#myModalDetail${product.id}">
                        <i class="bi bi-info-circle" style="font-size: 30px"></i>
                    </button>
                    <!-- The Modal -->
                    <div class="modal" id="myModalDetail${product.id}">
                        <div class="modal-dialog">
                            <div class="modal-content">

                                <!-- Modal Header -->
                                <div class="modal-header bg-green">
                                    <h4 class="modal-title m-auto text-light">Detail Product</h4>
                                </div>
                                <form action="/products?action=detail" method="set">
                                    <!-- Modal body -->
                                    <div class="modal-body  bg-a">
                                        <input type="hidden" value="${product.id}" name="id" readonly>
                                        <p>Name Product : ${product.name}</p>
                                        <p>Price Product : ${product.price}</p>
                                        <p>Description Product : ${product.description}</p>
                                        <p>Producer Product : ${product.producer}</p>
                                    </div>
                                    <!-- Modal footer -->
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
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
