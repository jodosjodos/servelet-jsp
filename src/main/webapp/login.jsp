<%--
  Created by IntelliJ IDEA.
  User: jodos
  Date: 07/02/2024
  Time: 7:56 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Loging</title>
</head>
<body>

<form action="login" method="post">
    Enter email: <input type="email" name="email"><br>
    Enter password : <input type="password" name="password"> <br>
    <input type="submit" value="login">
</form>
<c:if test="${error}" var="err">
    <c:out value="${err}"/>
</c:if>
</body>
</html>
