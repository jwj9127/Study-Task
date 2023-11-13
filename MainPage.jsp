<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>헬스채널</title>
</head>
<body style="display: flex; justify-content: center; margin: 0px;">

    <!-- 기본 틀 80% -->
    <div style="width: 80vw; display: flex; flex-direction: column; align-items: center;">

        <header style="display: flex; justify-content: center; width: 98.9vw; background-color: #FED14F;">
	        <div style="display: flex; align-items: center; width: 90vw; justify-content: space-between; margin: 30px;">

		        <!-- 로고 -->
	        	<a href="MainPage.jsp">
                	<img src="Logo.png" alt="로고" style="width: 10vw;">
	            </a>
	            
	            <!-- 네비게이션 -->
	            <div style="display: flex; align-items: center; width: 50vw; justify-content: space-around;">
		                <a href="HealthPage.jsp" style='color: black; cursor: pointer; font-weight: bold; font-size: large; text-decoration: none;'>
		                헬스 유튜버</a>
			            <a href="DietPage.jsp" style='color: black; cursor: pointer; font-weight: bold; font-size: large; text-decoration: none;'>
			            다이어트 유튜버</a>
			            <a href="" style='color: black; cursor: pointer; font-weight: bold; font-size: large; text-decoration: none;'>
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
						       	<div style="display: flex; align-items: center; font-weight: bold; font-size: medium;">
						        	<p><h3><%= username %>님</h3> 어서오세요</p>
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

        <!-- 명언 , 이미지 -->
        <main style="display: flex; width: 98.9vw; justify-content: space-around;">
        	<div style="position: relative;">
        		<img src="images/main.jpg" style="width: 98.9vw; height: 60vh; object-fit:cover;">
        		<div style="position: absolute; top: 35%; left: 32%; color:#FED14F; font-size: 20px; font-weight: bold;">
        		운동하라. 잘 먹어라. 인내하라. <br> 당신의 몸은 보답할 것이다</div>
        	</div> 
        </main>
        
        <!-- 하단바 -->
        <footer style="display: flex;  justify-content: center; border-top: solid 0.5px; color: #FED14F; width: 98.7vw;
         padding-top: 30px; padding-bottom: 30px">
        	<div style="display: flex; width: 90vw; justify-content: space-between;">
        		<a href="MainPage.jsp">
                	<img src="Logo.png" alt="로고" style="width: 10vw;">
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
