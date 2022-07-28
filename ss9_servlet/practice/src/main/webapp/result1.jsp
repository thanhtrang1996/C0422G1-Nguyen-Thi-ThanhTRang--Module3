<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 7/27/2022
  Time: 11:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>Vietnamese Dictionary</h3>

<form action = "/SimpleDictionaryServlet" method = "get">

    <input type="text" name="txtSearch" placeholder="Enter your word: "/>
    <input type = "submit" id = "submit" value = "Search"/>
    <p>word :${search} </p>
    <p>result: ${result}</p>

</form>

</body>
</html>
