<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<html>
<head>
    <title>JDBC 드라이버 테스트</title>
</head>
<body>
    <h2>JDBC 드라이버 테스트</h2>

    <%
        try {

   String DB_URL="jdbc:mysql://localhost:3306/user";
   String DB_ID="root";
   String DB_PASSWORD="1234";	
            // JDBC 드라이버테스트
            Class.forName("com.mysql.cj.jdbc.Driver");
			  Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
            
            out.println("드라이버가 성공적으로 실행되었습니다");

            con.close(); //
        } catch (Exception e) {
            out.println(e);
        }
    %>
</body>
</html>
