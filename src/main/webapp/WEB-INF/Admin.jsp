<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Joakim
  Date: 04-03-2020
  Time: 01:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
</head>
<body>
<h1>Admin</h1>

${requestScope.message}
<br><br>

Her kan du se listen over brugere, og slette dem.
<br>
<br>
<c:forEach var="element" items="${applicationScope.userMap}">
    ${element}
    <br>
</c:forEach>
<br>
Slet en bruger:
<form action="AdminServlet" method="post">
    <label for="name">Username:</label><br>
    <input type="text" id="name" name="name"><br>
    <input type="submit" value="Slet">
</form>

</body>
</html>
