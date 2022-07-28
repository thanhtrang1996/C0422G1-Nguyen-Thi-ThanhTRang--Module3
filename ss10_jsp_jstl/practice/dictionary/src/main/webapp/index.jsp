<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 7/28/2022
  Time: 2:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
 <h2>Vietnamese Dictionary</h2>
 <form action="/dictionaryServlet" method="post">
   <input type="text" name="textSearch" placeholder="Your are word">
   <input type="submit" value="search">
     <h4>Search :${search}</h4>
     <h4>Result :${result}</h4>
 </form>
  </body>
</html>
