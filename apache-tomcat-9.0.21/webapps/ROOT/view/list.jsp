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
    </h1>
    <a href="/user?action=create" class="btn btn-success m-auto">Create new user</a><br><br>
    <a href="/user?action=sort" class="btn btn-success m-auto">Sort</a><br><br>
    <form action="/user" method="get">
        <table>
            <thead>
            <tr>
                <th>Country: </th>
                <td>
                    <input type="text" name="country" class="form-control" value="${country}">
                    <input type="hidden" name="action" value="search">
                </td>
                <td>
                    <button type="submit" class="btn btn-outline-success">Search</button>
                </td>
            </tr>
            </thead>
        </table>
    </form>
    <table class="table table-hover text-center" id="myTable">
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
                <td><a href="/user?action=update" class="btn btn-warning"><i class="bi bi-pencil"
                                                                                           style="font-size: 30px"></i></a>
                </td>
                <td>
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop${user.id}">
                        Delete
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="staticBackdrop${user.id}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="staticBackdropLabel">FBI warning!</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    Do you want delete user ${user.name} ?
                                </div>
                                <div class="modal-footer">
                                    <a href="/user?action=delete&id=${user.id}" class="btn btn-outline-success">Accept</a>
                                    <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>
                                </div>
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
<%--<script>--%>
<%--    $(document).ready(function () {--%>
<%--        $('#myTable').dataTable({--%>
<%--            "dom": 'lrtip',--%>
<%--            "lengthChange": false,--%>
<%--            "pageLength": 5--%>
<%--        });--%>
<%--    });--%>
<%--</script>--%>
</body>
</html>
