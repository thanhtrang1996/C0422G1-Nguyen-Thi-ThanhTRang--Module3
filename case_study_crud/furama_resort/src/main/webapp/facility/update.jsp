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
    <title>Update Service</title>
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
    <form action="/facility?action=update" method="post">
        <div class="mb-3">
            <select onchange="choose()" id="select">
                <option >Choose Update Service</option>
                <option value="villa">Villa</option>
                <option value="house">House</option>
                <option value="room">Room</option>
            </select>
        </div>

        <div class="mb-3">
            <label for="name" class="form-label">Name :</label>
            <input type="text" class="form-control" id="name" >
        </div>
        <div class="mb-3">
            <label for="area" class="form-label">Area :</label>
            <input type="text" class="form-control" id="area" >
        </div>
        <div class="mb-3">
            <label for="cost" class="form-label">Cost</label>
            <input type="text" class="form-control" id="cost" >
        </div>
        <div class="mb-3">
            <label for="max" class="form-label"> Max people</label>
            <input type="text" class="form-control" id="max" >
        </div>
        <div class="mb-3">
            <label for="rent_type" class="form-label">Rent Type</label>
            <input type="text" class="form-control" id="rent_type" >
        </div>
        <div class="mb-3" id ="add" style="display: none">
            <label for="standard_room" class="form-label">Standard_room :</label>
            <input type="text" class="form-control" id="standard_room" >
        </div>
        <div class="mb-3" id ="add1" style="display: none">
            <label for="convenience" class="form-label">Convenience :</label>
            <input type="email" class="form-control" id="convenience">
        </div>
        <div class="mb-3" id="add2"style="display: none" >
            <label for="pool_area" class="form-label">Pool_area :</label>
            <input type="email" class="form-control" id="pool_area" >
        </div>
        <div class="mb-3" id ="add3"style="display: none">
            <label for="floors" class="form-label">Number_of_floors :</label>
            <input type="email" class="form-control" id="floors" >
        </div>
        <div class="mb-3" id="add4"style="display: none">
            <label for="facility" class="form-label">Facility_free :</label>
            <input type="email" class="form-control" id="facility" >
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
<script>
    function choose(){
        let result = document.getElementById("select").value;
        switch (result) {
            case "room":
                document.getElementById("add").style.display = "none";
                document.getElementById("add1").style.display = "none";
                document.getElementById("add2").style.display = "none";
                document.getElementById("add3").style.display = "none";
                document.getElementById("add4").style.display = "block";
            case "house":
                document.getElementById("add").style.display = "block";
                document.getElementById("add1").style.display = "block";
                document.getElementById("add2").style.display = "none";
                document.getElementById("add3").style.display = "block";
                document.getElementById("add4").style.display = "none";
            case "villa":
                document.getElementById("add").style.display = "block";
                document.getElementById("add1").style.display = "block";
                document.getElementById("add2").style.display = "block";
                document.getElementById("add3").style.display = "block";
                document.getElementById("add4").style.display = "none";
        }
    }
</script>
<script src="../style/jquery/jquery-3.5.1.min.js"></script>
<script src="../style/datatables/js/jquery.dataTables.min.js"></script>
<script src="../style/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="../style/bootstrap/bootstrap.bundle.min.js"></script>
</body>
</html>
