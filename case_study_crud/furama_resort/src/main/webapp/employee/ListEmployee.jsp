<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 8/5/2022
  Time: 3:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../style/bootstrap/normalize.css">
    <link rel="stylesheet" href="../style/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="../style/datatables/css/dataTables.bootstrap4.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>
    <link rel="stylesheet" href="../style/style.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0"/>
</head>
<body>
<table class="table table-hover">
    <thead>
    <tr>
        <th>name</th>
        <th>date_of_birth</th>
        <th>id_card</th>
        <th>email</th>
        <th>education_degree_id</th>
        <th>position_id</th>
        <th>salary</th>
        <th>delete</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>trang</td>
        <td>12-11-1998</td>
        <td>232334</td>
        <td>ddd@aba</td>
        <td>dai hoc</td>
        <td>quan ly</td>
        <td>45114141</td>
        <td>
            <button onclick="showInfoDelete('name')" type="button" data-bs-toggle="modal" data-bs-target="#deleteModal">
                Delete
            </button>
        </td>
        <td>
            <div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <form action="/employee" method="post">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h2 class="modal-title" id="exampleModalLabel">Employee</h2>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <input type="hidden" name="deleteName" id="deleteName">
                                <span>Bạn có muốn xóa khong: </span>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary" id="confirm">Delete</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <script>
                function showInfoDelete(name) {
                    document.getElementById("confirm").innerHTML = "<a href='/employee?action=delete&name=" + name + "'>delete</a>";
                }
            </script>
        </td>
    </tr>
    <tr>
        <td>nhien</td>
        <td>1-06-1999</td>
        <td>230034</td>
        <td>nhienddd@aba</td>
        <td>cao hoc</td>
        <td>nhanvien</td>
        <td>454141</td>
        <td>
            <button onclick="showInfoDelete('name')" type="button" data-bs-toggle="modal"
                    data-bs-target="#deleteModal1">
                Delete
            </button>
        </td>
        <td>
            <div class="modal fade" id="deleteModal1" tabindex="-1" aria-labelledby="exampleModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <form action="/employee" method="post">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h2 class="modal-title" id="exampleModalLabel1">Customer</h2>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <input type="hidden" name="deleteName" id="deleteName1">
                                <span>Bạn có muốn xóa khong: </span>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary" id="confirm1">Delete</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <script>
                function showInfoDelete(name) {
                    document.getElementById("confirm").innerHTML = "<a href='/employee?action=delete&name=" + name + "'>delete</a>";
                }
            </script>
        </td>
    </tr>
    <tr>
        <td>duyen</td>
        <td>23-07-2000</td>
        <td>30034</td>
        <td>duyenddd@aba</td>
        <td>cao hoc</td>
        <td>to truong</td>
        <td>4534141</td>
        <td>
            <button onclick="showInfoDelete('name')" type="button" data-bs-toggle="modal"
                    data-bs-target="#deleteModal2">
                Delete
            </button>
        </td>
        <td>
            <div class="modal fade" id="deleteModal2" tabindex="-1" aria-labelledby="exampleModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <form action="/customer" method="post">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h2 class="modal-title" id="exampleModalLabel2">Customer</h2>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <input type="hidden" name="deleteName" id="deleteName2">
                                <span>Bạn có muốn xóa khong: </span>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary" id="confirm2">Delete</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <script>
                function showInfoDelete(name) {
                    document.getElementById("confirm2").innerHTML = "<a href='/employee?action=delete&name=" + name + "'>delete</a>";
                }
            </script>
        </td>
    </tr>
    </tbody>
</table>
<script src="../style/jquery/jquery-3.5.1.min.js"></script>
<script src="../style/datatables/js/jquery.dataTables.min.js"></script>
<script src="../style/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="../style/bootstrap/bootstrap.bundle.min.js"></script>
</body>
</html>
