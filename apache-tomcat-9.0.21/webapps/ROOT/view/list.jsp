<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User list</title>
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
        User List
    </h1><br><br>

    <form action="/user" method="get">
        <table class="border-1">
            <thead>
            <tr class="row">
                <th class="col-lg-2">Country: </th>
                <td class="col-lg-4">
                    <input type="text" name="country" class="form-control" value="${country}">
                    <input type="hidden" name="action" value="search">
                </td>
                <td class="col-lg-2">
                    <button type="submit" class="btn btn-primary m-50 ">Search</button>
                </td >
                <td class="col-lg-3">  <a href="/user?action=create" class="btn btn-success m-auto">Create new user</a> </td>
                <td class="col-lg-1"><a href="/user?action=sort" class="btn btn-danger m-auto">Sort</a></td>
                <td><a href="/user?action=test">Test Transaction</a></td>

            </tr>
            </thead>
        </table>
    </form>
    <table class="table table-hover " id="myTable">
        <thead>
        <tr class="bg-a text-light">
            <th>ID</th>
            <th>NAME</th>
            <th>EMAIL</th>
            <th>COUNTRY</th>
            <th>EDIT</th>
            <th>DELETE</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="user" items="${user}">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.country}</td>
                <td>
                    <a href="/user?action=update&id=${user.id}" class="btn btn-warning">
                        <i class="bi bi-pencil" style="font-size: 30px"></i>
                    </a>
                </td>
                <td>
                    <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop${user.id}">
                        <i class="bi bi-trash" style="font-size: 30px"></i>
                    </button>
                    <div class="modal fade" id="staticBackdrop${user.id}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header bg-danger">
                                    <h3 class="modal-title  text-light " id="staticBackdropLabel"> WARNING!</h3>
                                </div>
                                <div class="modal-body">
                                   <h2 class="text-danger" >Do you want delete user  ?</h2>
                                    <p>Name : ${user.name}</p>
                                    <p>Email : ${user.email}</p>
                                    <p>Country : ${user.country}</p>
                                </div>
                                <div class="modal-footer">
                                    <a href="/user?action=delete&id=${user.id}" class="btn btn-success">Accept</a>
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <c:if test="${mess != null}">
        <p>${mess}</p>
    </c:if>
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
            "pageLength": 3,
            "ordering": false
        });
    });
</script>
</body>
</html>
