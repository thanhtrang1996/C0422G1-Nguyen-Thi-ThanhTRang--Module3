<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 8/5/2022
  Time: 3:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee Update</title>
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
<div class="container">
    <%@ include file="../include/header.jsp"%>
    <form action="/employee?action=update" method="post">

        <button type="button" data-bs-toggle="modal"
                data-bs-target="#exampleModalEmployee">
           Update Employee
        </button>

        <div class="modal fade" id="exampleModalEmployee" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h2 class="modal-title" id="exampleModalLabel">Employee</h2>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p class="h3 text-warning fw-bold">Do you want update Employee ?</p>
                        <input type="hidden" name="action" readonly>
                        <div>
                            <div>
                                <input type="text" name="name" placeholder="Name" class="form-control">
                            </div><br>
                            <div>
                                <input type="text" name="date_of_birth" placeholder="Date_of_birth" class="form-control">
                            </div><br>
                            <div>
                                <input type="text" name="id_card" placeholder="Id_card" class="form-control">
                            </div><br>
                            <div>
                                <input type="text" name="email" placeholder="Email" class="form-control">
                            </div><br>
                            <div>
                                <div >
                                    <select >
                                        <option >Choose Education_degree</option>
                                        <option>Trung cấp</option>
                                        <option>Cao đẳng</option>
                                        <option >Đại học </option>
                                        <option >Sau đại học</option>
                                    </select>
                                </div>
                            </div><br>
                            <div >
                                    <select >
                                        <option >Choose Position</option>
                                        <option>Lễ tân</option>
                                        <option>Phục vụ</option>
                                        <option >Chuyên viên</option>
                                        <option >Giám sát</option>
                                        <option >Quản lý</option>
                                        <option >Giám đốc</option>
                                    </select>
                                </div>
                            </div><br>
                            <div>
                                <input type="text" name="salary" placeholder="Salary" class="form-control">
                            </div><br>
                        <div >
                            <select >
                                <option >Choose Division</option>
                                <option>Sale – Marketing</option>
                                <option>Hành Chính</option>
                                <option >Phục vụ</option>
                                <option >Quản lý</option>
                            </select>
                        </div>
                    </div><br>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
    </form>

</div>
<script src="../style/jquery/jquery-3.5.1.min.js"></script>
<script src="../style/datatables/js/jquery.dataTables.min.js"></script>
<script src="../style/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="../style/bootstrap/bootstrap.bundle.min.js"></script>

</body>
</html>
