<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 8/4/2022
  Time: 11:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Service</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../style/bootstrap/normalize.css">
    <link rel="stylesheet" href="../style/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="../style/datatables/css/dataTables.bootstrap4.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>
    <link rel="stylesheet" href="../style/style.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0"/>
</head>
</head>
<body>

<div class="container">
    <%@ include file="../include/header.jsp" %>
    <form action="/facility?action=create" method="post">
        <div class="mb-3">
            <select onchange="choose()" id="select" class="form-select" name="choiceFacility">
                <option>Choose Create new Service</option>
                <option value="villa">Villa</option>
                <option value="house">House</option>
                <option value="room">Room</option>
            </select>
        </div>

        <div class="mb-3">
            <label for="name" class="form-label">Name :</label>
            <input type="text" class="form-control" id="name" name="name">
        </div>
        <div class="mb-3">
            <label for="area" class="form-label">Area :</label>
            <input type="number" class="form-control" id="area" name="area">
        </div>
        <div class="mb-3">
            <label for="cost" class="form-label">Cost</label>
            <input type="number" class="form-control" id="cost" name="cost">
        </div>
        <div class="mb-3">
            <label for="max" class="form-label"> Max people</label>
            <input type="number" class="form-control" id="max" name="maxPeople">
        </div>
        <div class="mb-3">
            <label for="rent_type" class="form-label">Rent Type</label>
            <input type="number" class="form-control" id="rent_type" name="rentTypeId">
        </div>
        <div class="mb-3">
            <label for="facility_type_id" class="form-label">Facility type id</label>
            <input type="number" class="form-control" id="facility_type_id" name="facilityTypeId">
        </div>
        <div class="mb-3" id="add" style="display: none">
            <label for="standard_room" class="form-label">Standard_room :</label>
            <input type="text" class="form-control" id="standard_room" name="standardRoom">
        </div>
        <div class="mb-3" id="add1" style="display: none">
            <label for="convenience" class="form-label">DescriptionOtherConvenience :</label>
            <input type="text" class="form-control" id="convenience" name="descriptionOtherConvenience">
        </div>
        <div class="mb-3" id="add2" style="display: none">
            <label for="pool_area" class="form-label">Pool_area :</label>
            <input type="number" class="form-control" id="pool_area" name="poolArea">
        </div>
        <div class="mb-3" id="add3" style="display: none">
            <label for="floors" class="form-label">Number_of_floors :</label>
            <input type="number" class="form-control" id="floors" name="numberOfFloors">
        </div>
        <div class="mb-3" id="add4" style="display: none">
            <label for="facility" class="form-label">Facility_free :</label>
            <input type="text" class="form-control" id="facility" name="facilityFree">
        </div>
        <div>
            <button class="btn btn-success" type="submit">Accept</button>
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
            </button>
        </div>
    </form>
</div>
<script>
    function choose() {
        let result = document.getElementById("select").value;
        console.log(result)
        switch (result) {
            case "room":
                document.getElementById("add").style.display = "none";
                document.getElementById("add1").style.display = "none";
                document.getElementById("add2").style.display = "none";
                document.getElementById("add3").style.display = "none";
                document.getElementById("add4").style.display = "block";
                break;
            case "house":
                document.getElementById("add").style.display = "block";
                document.getElementById("add1").style.display = "block";
                document.getElementById("add2").style.display = "none";
                document.getElementById("add3").style.display = "block";
                document.getElementById("add4").style.display = "none";
                break;
            case "villa":
                document.getElementById("add").style.display = "block";
                document.getElementById("add1").style.display = "block";
                document.getElementById("add2").style.display = "block";
                document.getElementById("add3").style.display = "block";
                document.getElementById("add4").style.display = "none";
                break;
        }
    }
</script>
<script src="../style/jquery/jquery-3.5.1.min.js"></script>
<script src="../style/datatables/js/jquery.dataTables.min.js"></script>
<script src="../style/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="../style/bootstrap/bootstrap.bundle.min.js"></script>
</body>
</html>
