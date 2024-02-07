<%--
  Created by IntelliJ IDEA.
  User: jodos
  Date: 07/02/2024
  Time: 8:01 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome </title>
</head>
<body>

<%
    if (session.getAttribute("email") == null) {
        response.sendRedirect("login.jsp");
    }
%>
you have loged in successfully : welcome :${email}
<a href="videos.jsp"> video here</a>
</body>
</html>
