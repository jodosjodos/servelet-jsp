<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Profile</title>
</head>
<body>
<%
    String conUrl = "jdbc:postgresql://localhost:5432/servlet";
    try {
        String sql = "SELECT * FROM student WHERE marks = 90";
        Class.forName("org.postgresql.Driver");
        Connection con = DriverManager.getConnection(conUrl, "jodos", "jodos2006");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(sql);
        System.out.println(rs.toString());

//        loop over fetched records
        if (rs.next()) {
            out.println("RollNo: " + rs.getString(1) + "<br>");
            out.println("Marks: " + rs.getString(2) + "<br>");
            out.println("Name: " + rs.getString(3) + "<br>");
        } else {
            out.println("No records found.");
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
