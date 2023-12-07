<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판 글쓰기</title>
	<script language="javascript">
      function in_check()
	  {
    	  let inp = document.input;
	      let title = inp.title;
	      let username = inp.username;
	      let content = inp.content;
			if (title.value == "") {
			  alert("제목을 입력하세요!");
			  inp.title.focus();
			  return;
			}

			if (content.value == "") {
			  alert("본문의 내용을 입력하세요!");
			  inp.content.focus();
			  return;
			}

			document.input.submit();
		}
     </script>	
</head>
<body style="display: flex; justify-content: center; margin: 0px;">

	<%
		String userid = (String)session.getAttribute("userid");	
		String username = (String) session.getAttribute("username");
	%>

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
						if (userid == null) {
						%>
						    <a href='Login.jsp' style='color: black; cursor: pointer; font-weight: bold; font-size: medium; text-decoration: none;'>로그인</a>
						<%
						} else {
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
        
        <%	if(userid == null){ %>
				<script>
					window.location.href = "<%= request.getContextPath() %>/Login.jsp";
				</script>
        <%	}else{ %>
        <!-- 글쓰기 -->
        <main style="display: flex; flex-direction: column; justify-content: space-around; align-items: center;
        margin-top: 10vh; padding: 20px;">
        	<form method="post" action="PostWriteOk.jsp" name="input">
		       <div align="center">
		        <table width="550" border="0" cellspacing="2" cellpadding="3">
			 	   <tr>
			 	      <td bgcolor='cccccc' width="150">
			 	         <div align="center"><font size=2><b> 제  목 </b></font></div>
			 	      </td>
			 	      <td width="400">
			 	         <input type="text" size="60" name="title" Maxlength="30">
			 	      </td>
			 	   </tr>
			 	   <tr>
			 	      <td bgcolor='cccccc' width="150">
			 	         <div align="center" style="width:100px;"><font size=2><b>작성자</b></font></div>
			 	      </td>
			 	      <td width="400"><input type="hidden" size="30" name="username" Maxlength="20" value=<%= username %>><%= username %></td>
			 	    </tr>
			 	   <tr>
			 	      <td bgcolor='cccccc' width="150">
			 	         <div align="center"><font size=2><b> 본  문</b></font></div>
			 	      </td>
			 	      <td><textarea rows="15" cols="60" name="content"></textarea></td>
			 	    </tr>
			 	  <tr>    
		          	<td colspan="2"> 
		              <div align="center"> 
		                    <input type="button" value="등   록" OnClick="in_check()">
		          	     	<a href="Post.jsp" style="border: solid 1px; text-decoration: none; color: black; cursor: pointer;">취소</a>
		        	  </div>
		           	</td>
		          </tr>
		         </table>
		       </div>  
		      </form>
        </main>
        <% } %>

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
