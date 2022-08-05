<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 8/5/2022
  Time: 4:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Customer</title>
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
    <%@ include file="../include/header.jsp" %>
    <form action="/customer?action=create" method="post">

        <div class="mb-3">
            <label for="name" class="form-label">Name Customer:</label>
            <input type="text" class="form-control" id="name" >
        </div>
        <div class="mb-3">
            <label for="birthday" class="form-label">Birthday :</label>
            <input type="text" class="form-control" id="birthday" >
        </div>
        <div class="mb-3">
            <label for="gender" class="form-label">Gender :</label>
            <input type="text" class="form-control" id="gender" >
        </div>
        <div class="mb-3">
            <label for="id_card" class="form-label"> Id_card :</label>
            <input type="text" class="form-control" id="id_card" >
        </div>
        <div class="mb-3">
            <label for="phone" class="form-label">Phone :</label>
            <input type="text" class="form-control" id="phone" >
        </div>
        <div class="mb-3" >
            <label for="email" class="form-label">email :</label>
            <input type="text" class="form-control" id="email" >
        </div>
        <div class="mb-3" >
            <label for="customer_type" class="form-label">Customer_type :</label>
            <div class="mb-3 row">
                  <select  id ="customer_type">
                    <option >Choose Customer Type</option>
                    <option>Diamond</option>
                    <option>Platinum</option>
                    <option >Gold</option>
                    <option >Silver</option>
                    <option >Member</option>
                </select>
            </div>
        </div>
        <div class="mb-3"  >
            <label for="address" class="form-label">Address :</label>
            <input type="email" class="form-control" id="address" >
        </div>
       <div>
           <button class="btn btn-success" type="submit">Accept</button>
           <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
           </button>
       </div>

        <div class="container my-5">
            <footer class="text-center text-white" style="background-color: #caced1;">
                <div class="container p-4">
                    <section class="">
                        <div class="row">
                            <div class="col-lg-2 ">
                                <div
                                        class="bg-image hover-overlay ripple shadow-1-strong rounded"
                                        data-ripple-color="light"
                                >
                                    <img
                                            src="https://mdbootstrap.com/img/new/fluid/city/113.jpg"
                                            class="w-100"
                                    />
                                    <a href="#!">
                                        <div
                                                class="mask"
                                                style="background-color: rgba(251, 251, 251, 0.2);"
                                        ></div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-2 ">
                                <div
                                        class="bg-image hover-overlay ripple shadow-1-strong rounded"
                                        data-ripple-color="light"
                                >
                                    <img
                                            src="https://mdbootstrap.com/img/new/fluid/city/111.jpg"
                                            class="w-100"
                                    />
                                    <a href="#!">
                                        <div
                                                class="mask"
                                                style="background-color: rgba(251, 251, 251, 0.2);"
                                        ></div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div
                                        class="bg-image hover-overlay ripple shadow-1-strong rounded"
                                        data-ripple-color="light"
                                >
                                    <img
                                            src="https://mdbootstrap.com/img/new/fluid/city/112.jpg"
                                            class="w-100"
                                    />
                                    <a href="#!">
                                        <div
                                                class="mask"
                                                style="background-color: rgba(251, 251, 251, 0.2);"
                                        ></div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div
                                        class="bg-image hover-overlay ripple shadow-1-strong rounded"
                                        data-ripple-color="light"
                                >
                                    <img
                                            src="https://mdbootstrap.com/img/new/fluid/city/114.jpg"
                                            class="w-100"
                                    />
                                    <a href="#!">
                                        <div
                                                class="mask"
                                                style="background-color: rgba(251, 251, 251, 0.2);"
                                        ></div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-2 ">
                                <div
                                        class="bg-image hover-overlay ripple shadow-1-strong rounded"
                                        data-ripple-color="light"
                                >
                                    <img
                                            src="https://mdbootstrap.com/img/new/fluid/city/115.jpg"
                                            class="w-100"
                                    />
                                    <a href="#!">
                                        <div
                                                class="mask"
                                                style="background-color: rgba(251, 251, 251, 0.2);"
                                        ></div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-2 ">
                                <div
                                        class="bg-image hover-overlay ripple shadow-1-strong rounded"
                                        data-ripple-color="light"
                                >
                                    <img
                                            src="https://mdbootstrap.com/img/new/fluid/city/116.jpg"
                                            class="w-100"
                                    />
                                    <a href="#!">
                                        <div
                                                class="mask"
                                                style="background-color: rgba(251, 251, 251, 0.2);"
                                        ></div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </section>

                </div>
                <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
                    © 2020 Copyright:
                    <a class="text-white" href="https://mdbootstrap.com/">MDBootstrap.com</a>
                </div>
            </footer>

        </div>
    </form>
</div>
<script src="../style/jquery/jquery-3.5.1.min.js"></script>
<script src="../style/datatables/js/jquery.dataTables.min.js"></script>
<script src="../style/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="../style/bootstrap/bootstrap.bundle.min.js"></script>
</body>
</html>
