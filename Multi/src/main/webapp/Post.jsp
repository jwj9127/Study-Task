<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판 리스트</title>
</head>

       <%
       String DB_URL="jdbc:mysql://localhost:3306/user";  
       String DB_ID="root";  
       String DB_PASSWORD="1234"; 
 	 
	   Class.forName("com.mysql.jdbc.Driver");  
	   Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

		request.setCharacterEncoding("UTF-8");

		String group_index;
		int list_index;

		group_index = request.getParameter("group_index");
		//첫 페이지는 group_index 값이 0
		   
		if (group_index != null) 	
				list_index = Integer.parseInt(group_index);  
		else 
				list_index = 0;     //현재 페이지 수 

		//board 테이블에 있는 총 자료의 수(글의 개수) 알아 오기
		String jsql = "select count(*) from Post";
		PreparedStatement pstmt1 = con.prepareStatement(jsql);
		ResultSet cntRs = pstmt1.executeQuery();

		cntRs.next();
		int cnt = cntRs.getInt(1);//글의 총 개수

		//한 페이지에 10개의 글 출력하기 위해
		//글의 개수를 10으로 나누어 페이지 계산
		int cntList = cnt/10; // 페이지 수 계산하기 위한 변수 
		int remainder = cnt%10; //나머지
		int cntList_1;//총페이지 수
			
		//1(11, 21, 31, 41, ...)번째 글이 올라올 때 총 페이지 수 1 증가
		if (cntList != 0) //글이 10개이상이면
		{
			   if (remainder == 0)	 //10으로 나눈 나머지가 없으면		
				  cntList_1 = cntList;  //몫이 페이지 수          
			   else                    //나머지가 있으면
				   cntList_1 = cntList + 1; //몫에 1 더한 값이 총페이지 수		  
		 } 
		 else 		 
			  cntList_1 = cntList + 1; //총페이지 수		
			   
		cntRs.close();
   %>

<body style="display: flex; justify-content: center; margin: 0px;">

    <!-- 기본 틀 80% -->
    <div style="width: 80vw; display: flex; flex-direction: column; align-items: center;">

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
						    String username = (String) session.getAttribute("username");
						    if (username != null) {
						%>
						       	<div style="display: flex; align-items: center; font-weight: bold; font-size: medium; cursor: default;">
						        	<p><h3 style="padding-right:5px;"><%= username %>님</h3>어서오세요</p>
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
        
        <!-- 게시글 목록 -->
	    <div style="height: 60vh;" align="center">
	        <br><br>
	        <table width="800" border="0" cellspacing="0" cellpadding="5">
	            <tr>
	                <td colspan="5">
	                    <div align="right"><font size=2 color=red>현재 페이지 / 총 페이지 &nbsp(<%= list_index + 1 %> / <%= cntList_1 %>)</font></div>
	                </td>
	            </tr>
	        </table>
	
	        <table border='0' width='800' cellpadding='0' cellspacing='0'>
	            <tr>
	                <td><hr size='1'></td>
	            </tr>
	        </table>
	
	        <table width="800" border="0" cellspacing="2" cellpadding="3">
	            <tr bgcolor='cccccc'>
	                <td width="50" height="20">
	                    <div align="center"><font size=2><b>번 호</b></font></div>
	                </td>
	                <td width="420" height="20">
	                    <div align="center"><font size=2><b>제 목</b></font></div>
	                </td>
	                <td width="100" height="20">
	                    <div align="center"><font size=2><b>글쓴이</b></font></div>
	                </td>
	                <td width="180" height="20">
	                    <div align="center"><font size=2><b>날 짜</b></font></div>
	                </td>
	                <td width="50" height="20">
	                    <div align="center"><font size=2><b>조회수</b></font></div>
	                </td>
	            </tr>
	
	            <%
	            // 현재 페이지에 해당하는 글 목록을 가져오는 SQL
	            String sql = "SELECT * FROM Post LIMIT ?, 10";
	            PreparedStatement pstmt = con.prepareStatement(sql);
	            pstmt.setInt(1, list_index * 10);
	            ResultSet rs = pstmt.executeQuery();
	
	            while (rs.next()) {
	                int postId = rs.getInt("postId");
	                String title = rs.getString("title");
	                String username = rs.getString("username");
	                String created_at = rs.getString("created_at");
	                int hits = rs.getInt("hits");
	            %>
	                <tr bgcolor='ededed'>
	                    <td>
	                        <div align="center"><font size=2><%=postId%></font></div>
	                    </td>
	                    <td>
	                        <a href="PostDetail.jsp?postId=<%=postId%>" style="color: black; text-decoration: none;"><font size=2><%=title%></font></a>
	                    </td>
	                    <td>
	                        <div align="center"><font size=2><%=username%></font></a></div>
	                    </td>
	                    <td>
	                        <div align="center"><font size="2"><%=created_at%></font></div>
	                    </td>
	                    <td>
	                        <div align="center"><font size=2><%=hits%></font></div>
	                    </td>
	                </tr>
	            <%
	            }
	            rs.close();
	            pstmt.close();
	            %>
	        </table>
	    </div>

	    <table border='0' width='800' cellpadding='0' cellspacing='0'>
	        <tr>
	            <td><hr size='1'></td>
	        </tr>
	    </table>
	
	
	     <div align="center">
	        <table width="700" border="0" cellspacing="0" cellpadding="5">
	          <tr>&nbsp;</tr><tr>
	             <td colspan="5">
	                <div align="center">
			<%
				//첫페이지 (group_index 값이 0)로 이동할 수 있게끔 링크
			%>
	        <%= "["%><a href="Post.jsp?group_index=0" style="color: black; text-decoration: none;"><font size=2>처음</font></a><%="]" %>
	        &nbsp;&nbsp;&nbsp;
	                
	   <% 
	   //페이지 번호를 출력 및 링크시키기 위한 변수들을 선언
	       int startpage=1;
	       int maxpage = cntList_1;
	       int endpage = startpage + maxpage -1;
	
		//보여줄 페이지가 속한 그룹의 첫번째 페이지부터 마지막 페이지까지의 링크를 추가
	       for (int j=startpage; j<=endpage; j++) 
		   {
	           if(j == list_index+1) 
			   {
	   %>
	               <%= j %>
	   <%
	            } 
	            else 
				{
	   %>
	        <a href="Post.jsp?group_index=<%= j - 1 %>" style="color: black; text-decoration: none;"><%= j %></a>
	   <%
	            }
	       }
	   %>
	    
		      &nbsp;&nbsp;&nbsp;
			  <%
					//마지막 페이지로 이동할 수 있게끔 링크
			   %>
		      <%= "["%><a href="Post.jsp?group_index=<%= cntList_1 - 1 %>" style="color: black; text-decoration: none;"><font size=2>끝</font></a><%="]" %>
		    
		             </td>
		          </tr>                
		          <tr>
		             <td colspan="5">
		                <div align="center">  
		        <center>
		        <a href="PostWrite.jsp" style="color: black; text-decoration: none;">글쓰기</a>
				<br><br>
		        </center> 
			 </div>
	        </td>
	      </tr>
	    </table>
	
	   </div>
	</form>


        <!-- 하단바 -->
        <footer style="display: flex;  justify-content: center; border-top: solid 0.5px; color: #FED14F; width: 98.7vw;
         padding-top: 30px; padding-bottom: 30px">
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
