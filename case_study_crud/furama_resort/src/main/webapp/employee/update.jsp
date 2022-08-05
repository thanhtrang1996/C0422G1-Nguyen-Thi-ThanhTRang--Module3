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
</head>
<body>
<div class="container">
    <%@ include file="../include/header.jsp"%>
    <form action="/employee?action=update" method="post">

            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1"
                    data-bs-toggle="dropdown" aria-expanded="false">
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
</body>
</html>
