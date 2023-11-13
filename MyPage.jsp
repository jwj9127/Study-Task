<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>
</head>
<body style="display: flex; justify-content: center;">

    <!-- 기본 틀 80% -->
    <div style="width: 80vw; display: flex; flex-direction: column; align-items: center; margin-top: 30px;">

		<!-- 로고 -->
        <header style="display: flex; align-items: center; margin-top: 30px;">
            <a href="MainPage.jsp">
                <img src="images/Logo.png" alt="로고" style="width: 20vw;">
            </a>
        </header>
        
        <!-- 회원 정보 관련 -->
        <main style="display: flex; flex-direction: column; align-items: center;">
        	<%
        		String username = (String) session.getAttribute("username");
			%>
			<%	if(username == null){	 %>
					<script>
						window.location.href = "<%= request.getContextPath() %>/Login.jsp";
					</script>
			<% } else { %>
							<div style="display: flex; align-items: center; margin-top: 100px;">
							        	<p><h2><%= username %>님</h2> 환영합니다</p>
							</div>
								
				        	<div style="display: flex;">
				        		<a href="" style="display: flex; justify-content: center; align-items: center; margin-right: 30px;
				        		border: solid 1px; width: 10vw; height: 8vh; text-decoration: none; color: black;">
				        			회원정보 수정
				        		</a>
				        		<a href="DeleteUser.jsp" style="display: flex; justify-content: center; align-items: center; 
				        		border: solid 1px; width: 10vw; height: 8vh; text-decoration: none; color: black;">
				        			회원 탈퇴
				        		</a>
				        	</div>
				        </main>
				        
				        <!-- 게시글 정보 관련 -->
				        <main>
				        	<div></div>
				        	<div></div>
				        </main>
        	<%	}	 %>

    </div>
</body>
</html>
