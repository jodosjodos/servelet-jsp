<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="com.servlet.serveletbeginner.DistrictsBean" %><%--
  Created by IntelliJ IDEA.
  User: jodos
  Date: 19/02/2024
  Time: 12:05 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    HttpSession session2 = request.getSession();
    List<DistrictsBean> districts = (List<DistrictsBean>) session2.getAttribute("districts");
    System.out.println(districts);
%>

<%--<!-- Using scriptlet to iterate over the list -->--%>
<%--<%--%>
<%--    for (DistrictsBean ds : districts) {--%>
<%--%>--%>
<%--<p><%= ds.getName() %>--%>
<%--</p>--%>
<%--<p><%= ds.getMayor() %>--%>
<%--</p>--%>
<%--<%--%>
<%--    }--%>
<%--%>--%>

<!-- Using JSTL c:forEach to iterate over the list -->
<c:forEach var="district" items="${districts}">
    <p>${district.name}</p>
    <p>${district.mayor}</p>
</c:forEach>

</body>
</html>
