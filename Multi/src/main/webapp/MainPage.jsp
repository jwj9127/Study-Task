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

		<!-- 메인 이미지 로드 css -->
		<style>
			.fade-in-box {
			  animation: fadein 3s;
			  -moz-animation: fadein 3s; /* Firefox */
			  -webkit-animation: fadein 3s; /* Safari and Chrome */
			  -o-animation: fadein 3s; /* Opera */
			}
			
			#s3 { text-shadow: 6px 2px 2px black; }
			
			@keyframes fadein {
			    from {
			        opacity: 0;
			    }
			    to {
			        opacity: 1;
			    }
			}
			@-moz-keyframes fadein { /* Firefox */
			    from {
			        opacity: 0;
			    }
			    to {
			        opacity: 1;
			    }
			}
			@-webkit-keyframes fadein { /* Safari and Chrome */
			    from {
			        opacity: 0;
			    }
			    to {
			        opacity: 1;
			    }
			}
			@-o-keyframes fadein { /* Opera */
			    from {
			        opacity: 0;
			    }
			    to {
			        opacity: 1;
			    }
			}
		</style>

        <!-- 명언 , 이미지 -->
        <main style="display: flex; width: 98.9vw; justify-content: space-around;">
        	<div style="position: relative;" class = "fade-in-box"; id = "s3";>
        		<img src="images/main.jpg" style="width: 98.9vw; height: 60vh; object-fit:cover;">
        		<div style="position: absolute; top: 53%; left: 64%; color:#FED14F; font-size: 40px; font-weight: bold; cursor: default;">
        		운동하라. 잘 먹어라. 인내하라. <br> 당신의 몸은 보답할 것이다</div>
        	</div> 
        </main>
        
        <!-- 유튜버 추천 -->
        <main style="margin-top: 50px; margin-bottom: 50px;">
        	<div style="font-size: 40px; font-weight: bold; cursor: default;">당신의 운동 가이드를 책임져 줄 구독자 <span style="color:#FED14F; font-size: 50px;">100만</span> 이상 유튜버 추천</div>
        	<div style="display: flex; align-items: center; margin-top: 30px;">
        		<div style="display: flex; flex-direction: column; align-items: center;">
	        		<img src="images/김종국.jpg" alt="김종국" style="border: solid 1px; border-radius: 50%; width: 10vw;">
	        		<div style= "margin-top: 10px; cursor: default;"><b>GYM JONG KOOK</b></div>
        		</div>
				<div style="width: 35vw;cursor: default; margin-left: 25px; font-size: 25px;">연예인들이 운동하는 모습, 그들의 운동 피드백이 궁금해!</div>
				<img src="images/arrow.png" alt="화살표" style="width: 80px; margin-left: 30px;">
				<a href="https://www.youtube.com/@GYMJONGKOOK" target="_blank" style="margin-left: 55px;">
            	<button style="background-color: #FED14F; cursor: pointer; padding:10px;">youtube 바로가기</button></a>
				<div>
					
				</div>
        	</div>
        	<div style="display: flex; align-items: center; margin-top: 30px;">
        		<div style="display: flex; flex-direction: column; align-items: center;">
	        		<img src="images/제이제이.jpg" alt="제이제이살롱드핏" style="border: solid 1px; border-radius: 50%; width: 10vw;">
	        		<div style= "margin-top: 10px; cursor: default;"><b>제이제이살롱드핏</b></div>
        		</div>
				<div style="width: 35vw;cursor: default; margin-left: 25px; font-size: 25px;">예쁜 몸! 식단! 다이어트의 다양한 정보가 필요해!</div>
				<img src="images/arrow.png" alt="화살표" style="width: 80px; margin-left: 30px;">
				<a href="https://www.youtube.com/@JJsalondefit" target="_blank" style="margin-left: 55px;">
            	<button style="background-color:#FED14F; cursor: pointer; padding:10px;">youtube 바로가기</button></a>
				<div>
					
				</div>
        	</div>
        	<div style="display: flex; align-items: center; margin-top: 30px;">
        		<div style="display: flex; flex-direction: column; align-items: center;">
        			<img src="images/자세요정.jpg" alt="자세요정" style="border: solid 1px; border-radius: 50%; width: 10vw;">
        			<div style= "margin-top: 10px; cursor: default;"><b>자세요정</b></div>
        		</div>
				<div style="width: 35vw;cursor: default; margin-left: 25px; font-size: 25px;">자세교정과 스트레칭 영상이 필요해!</div>
				<img src="images/arrow.png" alt="화살표" style="width: 80px; margin-left: 30px;">
				<a href="https://www.youtube.com/@jsyj" target="_blank" style="margin-left: 55px;">
            	<button style="background-color:#FED14F; cursor: pointer; padding:10px;">youtube 바로가기</button></a>
				<div>
					
				</div>
        	</div>
        </main>
        
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
