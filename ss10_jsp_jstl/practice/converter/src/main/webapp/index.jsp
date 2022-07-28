<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 7/28/2022
  Time: 10:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>converter</title>
  </head>
  <body>
 <h2>Currency Converter</h2>
 <form action="currencyConverter.jsp" method="get">

   <label>Rate :</label><br>
   <input type="text" name="rate" placeholder="RATE" value="2200"><br>
   <label>USD :</label><br>
   <input type="text" name="usd" placeholder="USD" value="0"><br><br>
   <input type="submit" value="Converter">

 </form>
  </body>
</html>
