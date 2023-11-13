<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
<html>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String userid = request.getParameter("userid");
	String userpw = request.getParameter("userpw");
	String userpwc = request.getParameter("userpwc");
	String username = request.getParameter("username");

	try{
		
		String DB_URL = "jdbc:mysql://localhost:3306/user";	//  접속할 DB명
		String DB_ID = "root";	//  접속할 아이디
		String DB_PASSWORD = "1234";	// 접속할 패스워드
		
		Class.forName("com.mysql.jdbc.Driver");  // JDBC 드라이버 로딩
		Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);	// DB에 접속
		
		String sql = "INSERT INTO SIGNUP (userid, userpw, userpwc, username) values(?, ?, ?, ?)";	//SQL문 작성
		
		//PreparedStatement 생성(SQL문의 형틀을 정의)
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, userid);
		pstmt.setString(2, userpw);
		pstmt.setString(3, userpwc);
		pstmt.setString(4, username);
		
		// sql문 실행
		int result = pstmt.executeUpdate();
		
		if(result == 1){ // 성공 %>
			<script>
				alert("회원가입에 성공하였습니다.");
				window.location.href = "<%= request.getContextPath() %>/Login.jsp";
			</script>
		<%	} else{ // 실패		%>
			<script>
				alert("회원가입에 실패하였습니다.");
				window.location.href = "<%= request.getContextPath() %>/SignUp.jsp";
			</script>
		<%	}
		
	} catch(Exception e){
		out.println(e);
	}
%>
</body>
</html>