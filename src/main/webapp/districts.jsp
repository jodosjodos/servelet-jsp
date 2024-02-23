<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jodos
  Date: 19/02/2024
  Time: 11:57 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.servlet.serveletbeginner.DistrictsBean" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    DistrictsBean dst = new DistrictsBean();
    dst.setMayor("Abdal");
    dst.setName("Nyanza");


    DistrictsBean dst1 = new DistrictsBean();
    dst1.setMayor("Abdal2");
    dst1.setName("Ruhango");
    List<DistrictsBean> dsts = new ArrayList<>();
    dsts.add(dst);
    dsts.add(dst1);
    HttpSession session1 = request.getSession();
    session1.setAttribute("districts",dsts);
    response.sendRedirect("umushi.jsp");
    %>
</body>
</html>
