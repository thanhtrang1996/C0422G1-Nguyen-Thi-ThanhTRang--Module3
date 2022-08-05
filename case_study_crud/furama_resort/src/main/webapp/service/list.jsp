<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 8/4/2022
  Time: 11:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Service</title>
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
        <th>Name</th>
        <th>Area</th>
        <th>Cost</th>
        <th>Max_people</th>
        <th>Rent_type</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>house</td>
        <td>34.4</td>
        <td>$5688</td>
        <td>2</td>
        <td>day</td>
        <td><button onclick="showInfoDelete('name')" type="button"  data-bs-toggle="modal" data-bs-target="#exampleModal">
            Delete
        </button></td>
        <td>   <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <form action="/furama" method="post">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2 class="modal-title" id="exampleModalLabel">Service</h2>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <input type="hidden" name="deleteName" id="deleteName">
                            <span>Bạn có muốn xóa khong: </span>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Delete</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
            <script>
                function showInfoDelete(name) {
                    document.getElementById("deleteName").innerText=name;
                }
            </script></td>
    </tr>
    <tr>
        <td>house</td>
        <td>44.4</td>
        <td>$888</td>
        <td>4</td>
        <td>month</td>
        <td><button onclick="showInfoDelete('name')" type="button"  data-bs-toggle="modal" data-bs-target="#exampleModal">
            Delete
        </button></td>
        <td>  <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <form action="/furama" method="post">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2 class="modal-title" id="exampleModalLabel1">Service</h2>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <input type="hidden" name="deleteName" id="deleteName1">
                            <span>Bạn có muốn xóa khong: </span>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" id="confirm" class="btn btn-primary"></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
            <script>
                function showInfoDelete(name) {
                    document.getElementById("confirm").innerHTML="<a href='/furama?action=delete&name="+name+"'>delete</a>";
                }
            </script></td>
    </tr>
    <tr>
        <td>house</td>
        <td>344.4</td>
        <td>$544688</td>
        <td>9</td>
        <td>year</td>
        <td><button onclick="showInfoDelete('name')" type="button" data-bs-toggle="modal" data-bs-target="#exampleModal">
            Delete
        </button></td>
        <td>  <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <form action="/furama" method="post">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2 class="modal-title" id="exampleModalLabel2">Service</h2>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <input type="hidden" name="deleteName" id="deleteName2">
                            <span>Bạn có muốn xóa khong: </span>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary" id ="confirm1"></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
            <script>
                function showInfoDelete(name) {
                    document.getElementById("confirm").innerHTML="<a href='/furama?action=delete&name="+name+"'>delete</a>";
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
