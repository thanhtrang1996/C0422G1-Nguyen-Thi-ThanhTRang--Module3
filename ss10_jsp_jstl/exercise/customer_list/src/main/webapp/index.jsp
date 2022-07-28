<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 7/28/2022
  Time: 3:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer</title>
</head>
<body>
<table border="1px" style="padding: 1px">
    <tr>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa Chỉ</th>
        <th>Ảnh</th>
    </tr>
    <c:forEach var="customer" items="${customerList}">
      <tr>
          <td>${customer.name}</td>
          <td>${customer.birthday}</td>
          <td>${customer.address}</td>
          <td><img src="${customer.image}" alt="not found" width="80px" height="80px"></td>
      </tr>

    </c:forEach>
</table>
</body>
</html>
