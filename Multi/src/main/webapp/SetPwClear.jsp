<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 재설정 완료</title>
</head>
<body style="display: flex; justify-content: center; margin: 0px;">
<%
	request.setCharacterEncoding("UTF-8");

	String userid = request.getParameter("userid");
	String username = request.getParameter("username");
	String userphone = request.getParameter("userphone");
	String userpw = request.getParameter("userpw");

	try{
		
		String DB_URL = "jdbc:mysql://localhost:3306/user";	//  접속할 DB명
		String DB_ID = "root";	//  접속할 아이디
		String DB_PASSWORD = "1234";	// 접속할 패스워드
		
		Class.forName("com.mysql.jdbc.Driver");  // JDBC 드라이버 로딩
		Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);	// DB에 접속
		
		String sql = "SELECT * FROM USERES WHERE userid = ? AND username = ? AND userphone = ?";	//SQL문 작성
		
		//PreparedStatement 생성(SQL문의 형틀을 정의)
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, userid);
		pstmt.setString(2, username);
		pstmt.setString(3, userphone);
		
		// sql문 실행
		pstmt.executeQuery();
			 
		String sql2 = "UPDATE USERES SET userpw = ? WHERE userid = ? AND username = ? AND userphone = ?";
		PreparedStatement pstmt2 = con.prepareStatement(sql2);
		pstmt2.setString(1, userpw);
		pstmt2.setString(2, userid);
		pstmt2.setString(3, username);
		pstmt2.setString(4, userphone);
			
		int result = pstmt2.executeUpdate();
			
		if(result == 1){ // 성공 %>
			<script>
				alert("비밀번호 재설정에 성공하였습니다.");
				window.location.href = "<%= request.getContextPath() %>/Login.jsp";
			</script>
		<%	} else{ // 실패		%>
			<script>
				alert("비밀번호 재설정에 실패하였습니다");
				window.location.href = "<%= request.getContextPath() %>/SignUp.jsp";
			</script>
		<%	}
		}catch(Exception e){
		out.println(e);
	}
%>
</body>
</html>