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
    <%@ include file="../include/header.jsp"%>
    <form action="/furama?action=update" method="post">
        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1"
                    data-bs-toggle="dropdown" aria-expanded="false">
                Update Service
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
               <li> <button type="button" class="btn btn-primary " data-bs-toggle="modal" data-bs-target="#exampleModalVilla">
                Villa</button></li>
                <li> <button type="button" class="btn btn-primary d-block" data-bs-toggle="modal" data-bs-target="#exampleModalHouse">
                House</button></li>
                <li> <button type="button" class="btn btn-primary " data-bs-toggle="modal" data-bs-target="#exampleModalRoom">
                Room</button></li>
            </ul>
        </div>

        <div class="modal fade" id="exampleModalVilla" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h2 class="modal-title" id="exampleModalLabelVilla">Service</h2>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p class="h3 text-warning fw-bold">Do you want update Villa ?</p>
                        <input type="hidden" name="action" readonly>
                        <div>
                            <div>
                                <b> Name : </b>
                                <input type="text" name="name">
                            </div><br>
                            <div>
                                <b> Area :</b>
                                <input type="text" name="area">
                            </div><br>
                            <div>
                                <b> Cost :</b>
                                <input type="text" name="cost">
                            </div><br>
                            <div>
                                <b> Max people :</b>
                                <input type="text" name="max_people">
                            </div><br>
                            <div>
                                <b> Rent Type :</b>
                                <input type="text" name="rent_type">
                            </div><br>
                            <div>
                                <b> Standard_room :</b>
                                <input type="text" name="standard_room">
                            </div><br>
                            <div>
                                <b>Convenience :</b>
                                <input type="text" name="description_other_convenience">
                            </div><br>
                            <div>
                                <b>Pool_area :</b>
                                <input type="text" name="pool_area">
                            </div><br>
                            <div>
                                <b>Number_of_floors :</b>
                                <input type="text" name="number_of_floors">
                            </div><br>
                        </div>
                    </div><br>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="exampleModalHouse" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h2 class="modal-title" id="exampleModalLabelHouse">Service</h2>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p class="h3 text-warning fw-bold">Do you want update House ?</p>
                        <input type="hidden" name="action" readonly>
                        <div>
                            <div>
                                <b> Name : </b>
                                <input type="text" name="name">
                            </div><br>
                            <div>
                                <b> Area :</b>
                                <input type="text" name="area">
                            </div><br>
                            <div>
                                <b> Cost :</b>
                                <input type="text" name="cost">
                            </div><br>
                            <div>
                                <b> Max people :</b>
                                <input type="text" name="max_people">
                            </div><br>
                            <div>
                                <b> Rent Type :</b>
                                <input type="text" name="rent_type">
                            </div><br>
                            <div>
                                <b> Standard_room :</b>
                                <input type="text" name="standard_room">
                            </div><br>
                            <div>
                                <b>Convenience :</b>
                                <input type="text" name="description_other_convenience">
                            </div><br>
                            <div>
                                <b>Number_of_floors :</b>
                                <input type="text" name="number_of_floors">
                            </div><br>
                        </div>
                    </div><br>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="exampleModalRoom" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabelRoom">Service</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p class="h3 text-warning fw-bold">Do you want update Room ?</p>
                        <input type="hidden" name="action" readonly>
                        <div>
                            <div>
                                <b> Name : </b>
                                <input type="text" name="name">
                            </div><br>
                            <div>
                                <b> Area :</b>
                                <input type="text" name="area">
                            </div><br>
                            <div>
                                <b> Cost :</b>
                                <input type="text" name="cost">
                            </div><br>
                            <div>
                                <b> Max people :</b>
                                <input type="text" name="max_people">
                            </div><br>
                            <div>
                                <b> Rent Type :</b>
                                <input type="text" name="rent_type">
                            </div><br>
                            <div>
                                <b> Facility_free :</b>
                                <input type="text" name="facility_free">
                            </div><br>
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
