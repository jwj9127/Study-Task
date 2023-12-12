<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.text.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판 상세보기</title>
</head>
	<% String Username = (String)session.getAttribute("username"); %>

	<script language="javascript">
      function in_check()
	  {
    	  let inp = document.input;
	      let content = inp.content;
	      let postId = inp.postId;
	      let username = inp.username;

		  if (content.value == "") {
			  alert("댓글 내용을 입력하세요!");
			  return;
		  }

		  document.input.submit();
		}
      
       function check(){
    	   let del = document.del;
    	   let postId = del.postId;
    	   let commentId = del.commentId;
    	   
    	   document.del.submit();
       }
     </script>	
<body style="display: flex; justify-content: center; margin: 0px;">

	<!-- 기본 틀 -->
    <div style="display: flex; flex-direction: column; align-items: center;">

        <header style="display: flex; justify-content: center; width: 98.9vw; background-color: #FED14F;">
	        <div style="display: flex; align-items: center; width: 90vw; justify-content: space-between; margin: 30px;">

		        <!-- 로고 -->
	        	<a href="MainPage.jsp">
                	<img src="images/Logo.png" alt="로고" style="width: 10vw;">
	            </a>
	            
	            <!-- 네비게이션 -->
	            <div style="display: flex; align-items: center; width: 50vw; justify-content: space-around;">
		                <a href="HealthPage.jsp" style='color: black; cursor: pointer; font-weight: bold; font-size: large; text-decoration: none;'>
		                헬스 유튜버</a>
			            <a href="DietPage.jsp" style='color: black; cursor: pointer; font-weight: bold; font-size: large; text-decoration: none;'>
			            다이어트 유튜버</a>
			            <a href="Post.jsp" style='color: black; cursor: pointer; font-weight: bold; font-size: large; text-decoration: none;'>
			            게시판</a>
			    </div>
			            
			    <!-- 회원관련 -->

			    <div style="display: flex; align-items: center; width: 25vw; justify-content: space-around;">
			            <%
						if (session.getAttribute("userid") == null) {
						%>
						    <a href='Login.jsp' style='color: black; cursor: pointer; font-weight: bold; font-size: medium; text-decoration: none;'>로그인</a>
						<%
						} else {
						    if (Username != null) {
						%>
						       	<div style="display: flex; align-items: center; font-weight: bold; font-size: medium; cursor: default;">
						        	<p><h3 style="padding-right:5px;"><%= Username %>님</h3>어서오세요</p>
						        </div>
						<%
						    }
						%>
						    <a href='Logout.jsp' style='color: black; font-weight: bold; font-size: medium; cursor: pointer; text-decoration: none;'>로그아웃</a>
						<%
						}
						%>
		                <a href='MyPage.jsp' style='color: black; font-weight: bold; font-size: medium; cursor: pointer; text-decoration: none;'>마이페이지</a>
	            </div>
	        </div>
        </header>
      
       <%
	       String DB_URL="jdbc:mysql://localhost:3306/user";  
	       String DB_ID="root";  
	       String DB_PASSWORD="1234"; 
	 	 
		   Class.forName("com.mysql.jdbc.Driver");
	 	   Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
	
		   String postId = request.getParameter("postId");              
		   String  jsql = "select * from post where postId = ?";
	       PreparedStatement pstmt = con.prepareStatement(jsql);
	       pstmt.setInt(1, Integer.parseInt(postId));
	       ResultSet rs = pstmt.executeQuery();
		
	       String title = "";
	       String content = "";
	       String created_at = "";
	       String username = "";
	       int hits = 0;
	       
	       if(rs.next()) {
	           title = rs.getString("title").trim();
	           content = rs.getString("content").trim();
	           created_at = rs.getString("created_at").trim();
	           username = rs.getString("username").trim();
	           hits = rs.getInt("hits");
	           hits ++;
	       }
   		%> 
   		
   		<div style="width: 70vw;">
   		<!-- 게시판 ( 목록 , 수정 , 삭제 ) -->
   		<%	if(Username.equals(username)){%>
   		    <main style="margin-top: 5vh; display: flex; justify-content: flex-end;">
   				<a href="Post.jsp" style="margin-right: 2vw; color:black; text-decoration: none;">목록</a>
   	            <a href="PostModify.jsp?postId=<%=postId %>" style="margin-right: 2vw; color:black; text-decoration: none;">수정</a>
   	            <a href="PostDelete.jsp?postId=<%=postId %>" style="color:black; text-decoration: none;">삭제</a>
   	        </main>
   		<%	}else{ %>
   			<main style="margin-top: 5vh; display: flex; justify-content: flex-end;">
   				<a href="Post.jsp" style="margin-right: 2vw; color:black; text-decoration: none;">목록</a>
   			</main>
   		<% } %>
        
        <!-- 게시판 상세보기 -->
        <main style="display: flex; flex-direction: column; justify-content: space-around; 
        margin-top: 2vh; padding-bottom: 2vh; border-top: solid 2px; border-bottom: solid 2px; padding-top: 20px;">
        	<div style="display: flex; justify-content: space-between;">
        		<div style="font-weight: bold; cursor: default;"><%= title %></div>
        		<div style="cursor: default;">조회수 <%= hits %></div>
        	</div>
        	<div style="margin-top: 3vh; cursor: default;"><%= username %> | <%= created_at %></div>
        	<div style="width: 60vw; padding-top: 10px; margin-top: 3vh; border-top: solid 1px #8A8A8A; height: 50vh; margin-bottom: 2vh;"><%= content %></div>
        	댓글
        </main>
        
        <%
        	String jsql2 = "select * from Postcomment order by commentId";
        	PreparedStatement pstmt2 = con.prepareStatement(jsql2);
        	ResultSet rs2 = pstmt2.executeQuery();
        	while (rs2.next()) 
 		   {
        		  String commentId = rs2.getString("commentId");
 	              String comment_content = rs2.getString("content");
 				  String comment_username = rs2.getString("username");
 	              String comment_created_at = rs2.getString("created_at");
        %>
        
        <!-- 댓글 -->
        <main style="display: flex; justify-content: space-between; border-bottom: solid 1px #8A8A8A; padding: 15px;">
        	<div style="display: flex;">
        		<div style="color: #8A8A8A"><%= comment_username %></div>
        		<div style="margin-left: 5vw;"><%= comment_content %></div>
        	</div>
        	<div style="display: flex;">
	        	<div><%= comment_created_at %></div>
	        	<% if(comment_username.equals(Username)){ %>
        		<div style="margin-left: 2vw;">
        			<form method="post" action="CommentDelete.jsp" name="del">
        				<input type = "hidden" name="commentId" value="<%= commentId %>">
        				<input type = "hidden" name="postId" value="<%= postId %>">
	        			<input type = "button" style="border: solid 1px; cursor: pointer;" value="삭제" OnClick="check()">
	        		</form>
	        	</div>
	        	<% } %>
        	</div>
        </main>
        <%	} %>
        <div style="margin-top: 3vh;">
	        <form method="post" action="PostDetailClear.jsp" name="input"
	        style="display: flex; justify-content: space-between; margin-top: 1vh;">
	        	<input type = "hidden" name="postId" value="<%= postId %>">
	        	<input type = "hidden" name="username" value="<%= Username %>">
	        	<input type = "text" style="width: 60vw; height: 3vh;" name="content">
	        	<input type = "button" style="background-color: white; border: solid 1px; cursor: pointer;" value="댓글 달기" OnClick="in_check()">
	        </form>
        </div>

		<%   
		    rs.close();
			pstmt.close();
	
	        String jsql3 = "update post set hits = ? where postId = ?";
	        PreparedStatement up_hits_Pstmt = con.prepareStatement(jsql3);
	        up_hits_Pstmt.setInt(1, hits);
	        up_hits_Pstmt.setInt(2, Integer.parseInt(postId));
	        up_hits_Pstmt.executeUpdate();
	        
			up_hits_Pstmt.close();  
			con.close();
  		%> 
        </div>
        
        <!-- 하단바 -->
        <footer style="display: flex;  justify-content: center; border-top: solid 0.5px; color: #FED14F; width: 98.7vw;
         margin-top: 30px; padding-top: 30px; padding-bottom: 30px">
        	<div style="display: flex; width: 90vw; justify-content: space-between;">
        		<a href="MainPage.jsp">
                	<img src="images/Logo.png" alt="로고" style="width: 10vw;">
	            </a>
	            <div>
	            	<h3 style="color: black; cursor: default;">이용약관</h3>
	            </div>
	            <div>
	            	<h3 style="color: black; cursor: default;">개인정보처리방침</h3>
	            </div>
	            <div>
	            	<h3 style="color: black; cursor: default;">공지사항</h3>
	            </div>
	            <div>
	            	<h3 style="color: black; cursor: default;">고객센터</h3>
	            </div>
        	</div>
        </footer>
    </div>
</body>
</html>
