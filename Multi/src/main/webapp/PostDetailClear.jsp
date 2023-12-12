<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.text.*, java.util.Date" %>         
<html>
   <head><title>게시글 댓글 작성</title></head>      
   <body>
<%
    String DB_URL="jdbc:mysql://localhost:3306/user";  
    String DB_ID="root";  
    String DB_PASSWORD="1234"; 
 	 
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

    request.setCharacterEncoding("UTF-8");
    
    String commentId;
    String username = (String) session.getAttribute("username");
    String postId = request.getParameter("postId");
    String content = request.getParameter("content");
    
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String created_at = dateFormat.format(new Date());
   
    String jsql = "select MAX(commentId) from postcomment";
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

    String jsql2 = "insert into PostComment (commentId, content, postId, username, created_at) values (?, ?, ?, ?, ?)";
    PreparedStatement pstmt2 = con.prepareStatement(jsql2);
    pstmt2.setInt(1, no);
    pstmt2.setString(2, content);
    pstmt2.setString(3, postId);
    pstmt2.setString(4, username);
    pstmt2.setString(5, created_at);
      
    pstmt2.executeUpdate();
   
    response.sendRedirect("PostDetail.jsp?postId=" + postId);
%>
  </body>
</html>
