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
</head>
<body>
<div class="container">
    <form action="/furama?action=update" method="post">
        <div>
            <b> Name :</b>
            <input type="text" name="name" >
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

    </form>

</div>
</body>
</html>
