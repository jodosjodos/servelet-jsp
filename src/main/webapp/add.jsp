<%--directive for importing packages--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" errorPage="error.jsp"  %>
<%@include file="index.html"%>
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
    pageContext.setAttribute("name","jodos",PageContext.SESSION_SCOPE);
%>
<%--expression for out.println--%>
<%=k%>
<p> my favorite nber is <%=coef%>
<%--    handling error--%>
    <%

        int y = 9/0;

    %>
</p>
</body>
</html>