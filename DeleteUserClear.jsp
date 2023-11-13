<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원탈퇴</title>
</head>
<body>
	<%
		String userid = (String) session.getAttribute("userid");
		String userpw = request.getParameter("userpw");
		try{
			
			String DB_URL = "jdbc:mysql://localhost:3306/user";	//  접속할 DB명
			String DB_ID = "root";	//  접속할 아이디
			String DB_PASSWORD = "1234";	// 접속할 패스워드
			
			Class.forName("com.mysql.jdbc.Driver");  // JDBC 드라이버 로딩
			Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);	// DB에 접속
			
			String sql = "select * from signup where userid = ? and userpw = ?";	//SQL문 작성
			
			//PreparedStatement 생성(SQL문의 형틀을 정의)
			PreparedStatement pstmt1 = con.prepareStatement(sql);
			pstmt1.setString(1, userid);
			pstmt1.setString(2, userpw);
			// sql문 실행
			ResultSet rs = pstmt1.executeQuery();
			
			if(rs.next()){ // 성공
				String jsql = "delete from signup where userid=?";
				PreparedStatement  pstmt2 = con.prepareStatement(jsql);
				pstmt2.setString(1, userid);
				
				pstmt2.executeUpdate();
				%>
				<script>
					alert("회원탈퇴가 완료되었습니다.");
					window.location.href = "<%= request.getContextPath() %>/Logout.jsp";
				</script>
			<% }else{	// 실패 %>
				<script>
					alert("비밀번호가 틀렸습니다.");
					window.location.href = "<%= request.getContextPath() %>/DeleteUser.jsp";
				</script>
			<% }
			
		} catch (Exception e) {
	        out.println(e);
		}
	%>
</body>
</html>