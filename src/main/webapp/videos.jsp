<%--
  Created by IntelliJ IDEA.
  User: jodos
  Date: 07/02/2024
  Time: 8:04 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> video page</title>
</head>
<body>
<%
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
    if (session.getAttribute("email") == null) {
        response.sendRedirect("login.jsp");
    }
%>

welcome to video page and you are authorized to be here
<iframe width="560" height="315" src="https://www.youtube.com/embed/4ZMq4-T0DaQ?si=pXZNnXvLZki_H7Uv"
        title="YouTube video player" frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
        allowfullscreen></iframe>
</body>
</html>
