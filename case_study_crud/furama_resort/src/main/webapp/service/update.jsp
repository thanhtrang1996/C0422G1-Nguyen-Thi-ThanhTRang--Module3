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
    <form action="/furama?action=update" method="post">
        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1"
                    data-bs-toggle="dropdown" aria-expanded="false">
                Dropdown button
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                <li><a class="dropdown-item" href="#villa">Villa</a></li>
                <li><a class="dropdown-item" href="#house">House</a></li>
                <li><a class="dropdown-item" href="#room">Room</a></li>
            </ul>
        </div>
        <div>
            <a  data-bs-toggle="modal" data-bs-target="#myModalCreateVilla" id="villa">
                <div class="modal " id="myModalCreateVilla">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <div class="modal-header bg-danger">
                                <h1 class="modal-title text-light m-auto">Update Villa</h1>
                            </div>
                            <form action="/furama" method="post">
                                <div class="modal-body">
                                    <p class="h3 text-warning fw-bold">Do you want update Villa ?</p>
                                    <input type="hidden" name="action" readonly>
                                    <div>
                                        <div>
                                            <b> Name :</b>
                                            <input type="text" name="name">
                                        </div>
                                        <div>
                                            <b> Area :</b>
                                            <input type="text" name="area">
                                        </div>
                                        <div>
                                            <b> Cost :</b>
                                            <input type="text" name="cost">
                                        </div>
                                        <div>
                                            <b> Max people :</b>
                                            <input type="text" name="max_people">
                                        </div>
                                        <div>
                                            <b> Rent Type :</b>
                                            <input type="text" name="rent_type">
                                        </div>
                                        <div>
                                            <b> Standard_room :</b>
                                            <input type="text" name="standard_room">
                                        </div>
                                        <div>
                                            <b>Description_other_convenience :</b>
                                            <input type="text" name="description_other_convenience">
                                        </div>
                                        <div>
                                            <b>Pool_area :</b>
                                            <input type="text" name="pool_area">
                                        </div>
                                        <div>
                                            <b>Number_of_floors :</b>
                                            <input type="text" name="number_of_floors">
                                        </div>
                                    </div>
                                </div>

                                <div class="modal-footer">
                                    <button class="btn btn-success" type="submit">Accept</button>
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </a>


        </div>
        <div>
            <a  data-bs-toggle="modal" data-bs-target="#myModalCreateVilla" id="house">
                <div class="modal " id="myModalCreateHouse">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <div class="modal-header bg-danger">
                                <h1 class="modal-title text-light m-auto">Update House</h1>
                            </div>
                            <form action="/furama" method="post">
                                <div class="modal-body">
                                    <p class="h3 text-warning fw-bold">Do you want update house ?</p>
                                    <div >
                                        <div>
                                            <b> Name :</b>
                                            <input type="text" name="name">
                                        </div>
                                        <div>
                                            <b> Area :</b>
                                            <input type="text" name="area">
                                        </div>
                                        <div>
                                            <b> Cost :</b>
                                            <input type="text" name="cost">
                                        </div>
                                        <div>
                                            <b> Max people :</b>
                                            <input type="text" name="max_people">
                                        </div>
                                        <div>
                                            <b> Rent Type :</b>
                                            <input type="text" name="rent_type">
                                        </div>
                                        <div>
                                            <b> Standard_room :</b>
                                            <input type="text" name="standard_room">
                                        </div>
                                        <div>
                                            <b>Description_other_convenience :</b>
                                            <input type="text" name="description_other_convenience">
                                        </div>
                                        <div>
                                            <b>Number_of_floors :</b>
                                            <input type="text" name="number_of_floors">
                                        </div>
                                    </div>
                                </div>

                                <div class="modal-footer">
                                    <button class="btn btn-success" type="submit">Accept</button>
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </a>


        </div>
        <div>
            <a  data-bs-toggle="modal" data-bs-target="#myModalCreateVilla" id="room">
                <div class="modal " id="myModalCreateRoom">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <div class="modal-header bg-danger">
                            <h1 class="modal-title text-light m-auto">Update room</h1>
                        </div>
                        <form action="/furama" method="post">
                            <div class="modal-body">
                                <p class="h3 text-warning fw-bold">Do you want update room?</p>
                                <div >
                                    <div>
                                        <b> Name :</b>
                                        <input type="text" name="name">
                                    </div>
                                    <div>
                                        <b> Area :</b>
                                        <input type="text" name="area">
                                    </div>
                                    <div>
                                        <b> Cost :</b>
                                        <input type="text" name="cost">
                                    </div>
                                    <div>
                                        <b> Max people :</b>
                                        <input type="text" name="max_people">
                                    </div>
                                    <div>
                                        <b> Rent Type :</b>
                                        <input type="text" name="rent_type">
                                    </div>
                                    <div>
                                        <b> Standard_room :</b>
                                        <input type="text" name="standard_room">
                                    </div>
                                    <div>
                                        <b>Description_other_convenience :</b>
                                        <input type="text" name="description_other_convenience">
                                    </div>
                                    <div>
                                        <b>Number_of_floors :</b>
                                        <input type="text" name="number_of_floors">
                                    </div>
                                </div>
                            </div>

                            <div class="modal-footer">
                                <button class="btn btn-success" type="submit">Accept</button>
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div></a>


        </div>

    </form>

</div>
<script src="../style/jquery/jquery-3.5.1.min.js"></script>
<script src="../style/datatables/js/jquery.dataTables.min.js"></script>
<script src="../style/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="../style/bootstrap/bootstrap.bundle.min.js"></script>

</body>
</html>
