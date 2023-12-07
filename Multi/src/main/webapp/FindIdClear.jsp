<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기 완료</title>
</head>
<body style="display: flex; justify-content: center; margin: 0px;">
<%
	request.setCharacterEncoding("UTF-8");

	String username = request.getParameter("username");
	String userphone = request.getParameter("userphone");

	try{
		
		String DB_URL = "jdbc:mysql://localhost:3306/user";	//  접속할 DB명
		String DB_ID = "root";	//  접속할 아이디
		String DB_PASSWORD = "1234";	// 접속할 패스워드
		
		Class.forName("com.mysql.jdbc.Driver");  // JDBC 드라이버 로딩
		Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);	// DB에 접속
		
		String sql = "SELECT userid FROM USERES WHERE username = ? AND userphone = ?";	//SQL문 작성
		
		//PreparedStatement 생성(SQL문의 형틀을 정의)
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, username);
		pstmt.setString(2, userphone);
		
		// sql문 실행
		ResultSet rs = pstmt.executeQuery();
		 if (rs.next()) {
		String userId = rs.getString("userid");
%>
		    <script>
                alert("회원님의 아이디는 <%=userId %> 입니다");
                window.location.href = "<%= request.getContextPath() %>/Login.jsp";
            </script>
	    
	    <%
            } else {
%>
			    <script>
                    alert("해당하는 사용자를 찾을 수 없습니다.");
                    window.location.href = "<%= request.getContextPath() %>/FindId.jsp";
                </script>
<%	}
		}catch(Exception e){
		out.println(e);
	}
%>
</body>
</html>