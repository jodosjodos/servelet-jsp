<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset-UTF=8">
    <title>Insert title here</title>
</head>
<body bgcolor="#00ffff">
<%

    int i = Integer.parseInt(request.getParameter("num1"));
    int j = Integer.parseInt(request.getParameter("num2"));
    int k = i + j;
    out.print("output" + k);
%>
</body>
</html>