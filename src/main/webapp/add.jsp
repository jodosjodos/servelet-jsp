<%--directive for importing packages--%>

<%@ page import="java.util.Scanner" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset-UTF=8">
    <title>Insert title here</title>
</head>
<body bgcolor="#00ffff">
<%--declaration , you person methods and their delaration--%>
<%!
    int coef = 3;
//Scanner scn = new Scanner();
%>
<%--scriplet--%>
<%

    int i = Integer.parseInt(request.getParameter("num1"));
    int j = Integer.parseInt(request.getParameter("num2"));
    int k = i + j;
//    out.print("output" + k);
%>
<%--expression for out.println--%>
<%=k%>
<p> my favorite nber is <%=coef%>
</p>
</body>
</html>