<%--
  Created by IntelliJ IDEA.
  User: jodos
  Date: 06/02/2024
  Time: 1:40 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<html>
<head>
    <title>display page</title>
</head>
<body>
<%--<%--%>
<%--String name= request.getAttribute("label").toString();--%>


<%--<c:out value="Hello world"/>--%>
<%-- <c:out value=" I am going to shit"/>--%>
<%--&lt;%&ndash;<c:import url="http://www.telusko.com"></c:import>&ndash;%&gt;--%>
<%--${student.name}--%>
<%--<c:forEach items="${students}" var="s">
    ${s} <br>

</c:forEach>--%>

<%--fetch data--%>
<%--fetch  database source using jstl--%>
<sql:setDataSource var="db" driver="org.postgresql.Driver" url="jdbc:postgresql://localhost:5432/servlet" user="jodos" password="jodos2006"/>
<sql:query var="rs" dataSource="${db}">
    SELECT * FROM gadgets
</sql:query>
<c:forEach items="${rs.rows}" var="gadget">
    <c:out value="${gadget.gid}"/> : <c:out value="${gadget.gname}"/> : <c:out value="${gadget.price}"/>

</c:forEach>
</body>
</html>
