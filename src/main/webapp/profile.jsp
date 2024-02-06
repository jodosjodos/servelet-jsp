<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Profile</title>
</head>
<body>
<%
<%--    connect to db--%>
    String conUrl = "jdbc:postgresql://localhost:5432/servlet";
    try {
<%--swl command to fetch--%>
        String sql = "SELECT * FROM student";
        Class.forName("org.postgresql.Driver");
        Connection con = DriverManager.getConnection(conUrl, "jodos", "jodos2006");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(sql);
        System.out.println(rs.toString());

//        loop over fetched records
        while (rs.next()) {
            out.println("RollNo: " + rs.getString(1) + "<br>");
            out.println("Marks: " + rs.getString(2) + "<br>");
            out.println("Name: " + rs.getString(3) + "<br>");
            out.println("<hr>");
        }

        // Close resources
        rs.close();
        st.close();
        con.close();
    } catch (SQLException | ClassNotFoundException e) {
        out.println("An error occurred: " + e.getMessage());
        e.printStackTrace();
    }
%>
</body>
</html>
