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
</head>
<body>
<table class="table table-hover">
    <thead>
    <tr>
        <th>name</th>
        <th>birthday</th>
        <th>gender</th>
        <th>id_card</th>
        <th>phone</th>
        <th>email</th>
        <th>customer_type</th>
        <th>address</th>
        <th>delete</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>hai</td>
        <td>12-09-1995</td>
        <td>nam</td>
        <td>3423</td>
        <td>451514</td>
        <td>hai@gmail.com</td>
        <td>gold</td>
        <td>ha noi</td>
        <td><button onclick="showInfoDelete('name')" type="button" data-bs-toggle="modal" data-bs-target="#exampleModal">
            Delete
        </button></td>
        <td>  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <form action="/employee" method="post">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2 class="modal-title" id="exampleModalLabel">Employee</h2>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <input type="hidden" name="deleteName" id="deleteName">
                            <span>Bạn có muốn xóa khong: </span>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary" id ="confirm">Delete</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
            <script>
                function showInfoDelete(name) {
                    document.getElementById("confirm").innerHTML="<a href='/employee?action=delete&name="+name+"'>delete</a>";
                }
            </script>
        </td>
    </tr>
    <tr>
        <td>tam</td>
        <td>22-06-1993</td>
        <td>nu</td>
        <td>3434423</td>
        <td>45144514</td>
        <td>tam@gmail.com</td>
        <td>Diamond</td>
        <td>quang tri</td>
        <td><button onclick="showInfoDelete('name')" type="button"  data-bs-toggle="modal" data-bs-target="#deleteModal2">
            Delete
        </button></td>
        <td>   <div class="modal fade" id="deleteModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <form action="/employee" method="post">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2 class="modal-title" id="exampleModalLabel2">Customer</h2>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <input type="hidden" name="deleteName" id="deleteName2">
                            <span>Bạn có muốn xóa khong: </span>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary" id = "confirm2">Delete</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
            <script>
                function showInfoDelete(name) {
                    document.getElementById("confirm2").innerHTML="<a href='/employee?action=delete&name="+name+"'>delete</a>";
                }
            </script></td>
    </tr>
    <tr>
        <td>trac</td>
        <td>22-01-1991</td>
        <td>nam</td>
        <td>1134423</td>
        <td>4445144514</td>
        <td>trac@gmail.com</td>
        <td>Diamond</td>
        <td>quang nam</td>
        <td><button onclick="showInfoDelete('name')" type="button"  data-bs-toggle="modal" data-bs-target="#deleteModal3">
            Delete
        </button></td>
        <td>   <div class="modal fade" id="deleteModal3" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <form action="/employee" method="post">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2 class="modal-title" id="exampleModalLabel3">Customer</h2>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <input type="hidden" name="deleteName" id="deleteName3">
                            <span>Bạn có muốn xóa khong: </span>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary" id = "confirm3">Delete</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
            <script>
                function showInfoDelete(name) {
                    document.getElementById("confirm3").innerHTML="<a href='/employee?action=delete&name="+name+"'>delete</a>";
                }
            </script></td>
    </tr>
    </tbody>

</table>
<script src="../style/jquery/jquery-3.5.1.min.js"></script>
<script src="../style/datatables/js/jquery.dataTables.min.js"></script>
<script src="../style/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="../style/bootstrap/bootstrap.bundle.min.js"></script>

</body>
</html>
