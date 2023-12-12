<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.text.*, java.util.Date" %>         
<html>
   <head><title>게시글 작성</title></head>      
   <body>
<%
    String DB_URL="jdbc:mysql://localhost:3306/user";  
    String DB_ID="root";  
    String DB_PASSWORD="1234"; 
 	 
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

    request.setCharacterEncoding("UTF-8");
    
    String title = request.getParameter("title");              
    String username = (String) session.getAttribute("username");
    String content = request.getParameter("content");
    
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String created_at = dateFormat.format(new Date());
    
    try {
        
            String jsql = "SELECT MAX(postId) FROM post";
            PreparedStatement pstmt = con.prepareStatement(jsql);
            ResultSet rs = pstmt.executeQuery();

            int no;
            if (rs == null) {  
                no = 1;
            }  else {      
                rs.next();
                no = rs.getInt(1) + 1;
            } 
            
            rs.close();    

            String jsql2 = "INSERT INTO post (postId, title, content, username, created_at) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement pstmt2 = con.prepareStatement(jsql2);
            pstmt2.setInt(1, no);
            pstmt2.setString(2, title);
            pstmt2.setString(3, content);
            pstmt2.setString(4, username);
            pstmt2.setString(5, created_at);
            
            pstmt2.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace(); // 여기서는 간단하게 출력하도록 했습니다. 실제로는 로깅 등으로 변경하는 것이 좋습니다.
    } finally {
        // 사용이 끝난 데이터베이스 관련 객체들을 닫아줍니다.
        if (con != null) con.close();
    }
   
    response.sendRedirect("Post.jsp");
%>
  </body>
</html>
