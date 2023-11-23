<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<meta charset="EUC-KR">
	<head><title>회원 수정 완료</title></head>
	<body>

<%
	request.setCharacterEncoding("euc-kr");

	String key = (String) session.getAttribute("userid");
	String userpw = request.getParameter("userpw");
	String userphone = request.getParameter("userphone");
	String username = request.getParameter("username");
	
 	String DB_URL="jdbc:mysql://localhost:3306/user";
    String DB_ID="root";  
    String DB_PASSWORD="1234";
 	 
	Class.forName("com.mysql.jdbc.Driver");  
 	Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	String jsql = "update signup set userpw=?, userphone=?, username=? where userid=? ";	
	PreparedStatement pstmt = con.prepareStatement(jsql);
	pstmt.setString(1,userpw);
	pstmt.setString(2,userphone);
	pstmt.setString(3,username);
	pstmt.setString(4,key);

	pstmt.executeUpdate();  

	String jsql2 = "select * from signup where userid=?";
	PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	pstmt2.setString(1,key);

	ResultSet rs = pstmt2.executeQuery();
	if(rs.next()){
		%>
		<script>
		alert("회원 정보가 수정됐습니다.");
		window.location.href = "<%= request.getContextPath() %>/Logout.jsp";
		</script>
	<%}
%>
</body>
</html>