<%--
  Created by IntelliJ IDEA.
  User: jodos
  Date: 06/02/2024
  Time: 1:40 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/sql" %>

<html>
<head>
    <title>display page</title>
</head>
<body>
 hello world
<%--<%--%>
<%--String name= request.getAttribute("label").toString();--%>

<%--%>--%>

<%--<c:out value="Hello world"/>--%>
<%-- <c:out value=" I am going to shit"/>--%>
<%--&lt;%&ndash;<c:import url="http://www.telusko.com"></c:import>&ndash;%&gt;--%>
<%--${student.name}--%>
<c:forEach items="${students}" var="s">
    ${s} <br>

</c:forEach>
</body>
</html>
