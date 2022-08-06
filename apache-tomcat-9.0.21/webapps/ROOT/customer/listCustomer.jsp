<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 8/5/2022
  Time: 4:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../style/bootstrap/normalize.css">
    <link rel="stylesheet" href="../style/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="../style/datatables/css/dataTables.bootstrap4.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>
    <link rel="stylesheet" href="../style/style.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0"/>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div class="container">
    <h1>List Customer</h1>
    <a href="/customer?action=create" class=" btn btn-success">Create Customer</a>
    <table class="table table-hover" id="myTable">
        <thead>
        <tr>
            <th>No.</th>
            <th>Name</th>
            <th>Birthday</th>
            <th>Gender</th>
            <th>IdCard</th>
            <th>Phone</th>
            <th>CustomerType</th>
            <th>Email</th>
            <th>Address</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="customer" items="${customer}">
            <tr>
                <td>${customer.id}</td>
                <td>${customer.name}</td>
                <td>${customer.dateOfBirth}</td>
                <c:if test="${customer.gender}">
                    <td>Male</td>
                </c:if>
                <c:if test="${!customer.gender}">
                    <td>FeMale</td>
                </c:if>
                <td>${customer.idCard}</td>
                <td>${customer.phoneNumber}</td>
                <c:forEach items="${customerTypeList}" var="customerType">
                    <c:if test="${customerType.id == customer.customerTypeId}">
                        <td>${customerType.nameCustomerType}</td>
                    </c:if>
                </c:forEach>
                <td>${customer.email}</td>
                <td>${customer.address}</td>
                <td>
                    <a href="/customer?action=update&id=${customer.id}" class="btn btn-warning">Update</a>
                </td>
                <td>
                    <button onclick="showInfoDelete(${customer.id},'name')" class="btn btn-danger"
                            type="button" data-bs-toggle="modal" data-bs-target="#deleteModal">
                        Delete
                    </button>
                </td>
            </tr>
        </c:forEach>
        <div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <form action="/customer" method="post">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2 class="modal-title" id="exampleModalLabel">Customer</h2>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <input type="hidden" name="deleteId" id="deleteId">
                            <span id="payload"></span>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary" id="confirm">Delete</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        </tbody>
    </table>
</div>
<%@include file="../include/footer.jsp"%>
<script>
    function showInfoDelete(Id, name) {
        document.getElementById("confirm").innerHTML = "<a href='/customer?action=delete&id=" + Id + "'>delete</a>";
        document.getElementById("payload").innerHTML = `<span>Bạn có muốn xoá nhân viên có tên là ` + name+ ` không?</span>`
    }
</script>
<script>
    $(document).ready(function () {
        $('#myTable').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        });
    });
</script>
<script src="../style/jquery/jquery-3.5.1.min.js"></script>
<script src="../style/datatables/js/jquery.dataTables.min.js"></script>
<script src="../style/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="../style/bootstrap/bootstrap.bundle.min.js"></script>
</body>
</html>
