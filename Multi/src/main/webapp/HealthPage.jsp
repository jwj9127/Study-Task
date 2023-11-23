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
						       	<div style="display: flex; align-items: center; font-weight: bold; font-size: medium; cursor: default;">
						        	<p><h3><%= username %>님 </h3> 어서오세요</p>
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

        <!-- 메인 -->
        <main style="display: flex; width: 80vw; justify-content: space-around; margin-top: 70px;">
        
        	<div style="display: flex; border: solid 0.5px; color: #FED14F; width: 30vw; padding: 20px; align-items: center;">
            	<div style="display: flex; flex-direction: column; align-items: center;">
            		<img src="images/말왕.jpg" alt="말왕TV" style="border: solid 1px; border-radius: 50%; width: 10vw;">
            		<p style="font-weight: bold; cursor: default; color: black;">
            			말왕TV
            		</p>
            	</div>
            	<div style="display: flex; flex-direction: column; color:black; margin-left: 15px;">
            		<p style="font-weight: bold; cursor: default;">
            			즐겁게 운동하는 고품격 운동방송
            		</p>
            		<a href="https://www.youtube.com/@MrRagoona88" target="_blank" style="margin-top: 15px;">
            		<button style="background-color:#FED14F; cursor: pointer; padding:10px;">youtube 바로가기</button></a>
            	</div>
            </div>
            
            <div style="display: flex; border: solid 0.5px; color: #FED14F; width: 30vw; padding: 20px; align-items: center;">
            	<div style="display: flex; flex-direction: column; align-items: center;">
            		<img src="images/흑자.jpg" alt="흑자헬스" style="border: solid 1px; border-radius: 50%; width: 10vw;">
            		<p style="font-weight: bold; cursor: default; color: black;">
            			흑자헬스
            		</p>
            	</div>
            	<div style="display: flex; flex-direction: column; color:black; margin-left: 15px;">
            		<p style="font-weight: bold; cursor: default;">
            			실(Loss)없이 운동하자!
            		</p>
            		<a href="https://www.youtube.com/@SurplusHealth" target="_blank" style="margin-top: 15px;">
            		<button style="background-color:#FED14F; cursor: pointer; padding:10px;">youtube 바로가기</button></a>
            	</div>
            </div>
        </main>


        <main style="display: flex; width: 80vw; justify-content: space-around; margin-top: 30px;">
        
        	<div style="display: flex; border: solid 0.5px; color: #FED14F; width: 30vw; padding: 20px; align-items: center;">
            	<div style="display: flex; flex-direction: column; align-items: center;">
            		<img src="images/지피티.jpg" alt="지피티" style="border: solid 1px; border-radius: 50%; width: 10vw;">
            		<p style="font-weight: bold; cursor: default; color:black;">
            			지피티
            		</p>
            	</div>
            	<div style="display: flex; flex-direction: column; color:black; margin-left: 15px;">
            		<p style="font-weight: bold; cursor: default;">
            			맛있게 먹으면서 운동하자!
            		</p>
            		<a href="https://www.youtube.com/@gpt" target="_blank" style="margin-top: 15px;">
            		<button style="background-color:#FED14F; cursor: pointer; padding:10px;">youtube 바로가기</button></a>
            	</div>
            </div>
            
            <div style="display: flex; border: solid 0.5px; color: #FED14F; width: 30vw; padding: 20px; align-items: center;">
            	<div style="display: flex; flex-direction: column; align-items: center;">
            		<img src="images/피지컬갤러리.jpg" alt="피지컬갤러리" style="border: solid 1px; border-radius: 50%; width: 10vw;">
            		<p style="font-weight: bold; cursor: default; color:black;">
            			피지컬갤러리
            		</p>
            	</div>
            	<div style="display: flex; flex-direction: column; color:black; margin-left: 15px;">
            		<p style="font-weight: bold; cursor: default;">
            			빡빡이 아저씨를 볼 수 있는 채널.
            		</p>
            		<a href="https://www.youtube.com/@physicalgallery_official" target="_blank" style="margin-top: 15px;">
            		<button style="background-color: #FED14F; cursor: pointer; padding:10px;">youtube 바로가기</button></a>
            	</div>
            </div>
        </main>
        
        <main style="display: flex; width: 80vw; justify-content: space-around; margin-top: 30px;">
        
        	<div style="display: flex; border: solid 0.5px; color: #FED14F; width: 30vw; padding: 20px; align-items: center;">
            	<div style="display: flex; flex-direction: column; align-items: center;">
            		<img src="images/김종국.jpg" alt="김종국" style="border: solid 1px; border-radius: 50%; width: 10vw;">
            		<p style="font-weight: bold; cursor: default; color:black;">
            			GYM JONG KOOK
            		</p>
            	</div>
            	<div style="display: flex; flex-direction: column; color:black; margin-left: 15px;">
            		<p style="font-weight: bold; cursor: default;">
            			그냥 운동 좋아하고 오래 한 ㅎ 동네 아저씨 ㅎ
            		</p>
            		<a href="https://www.youtube.com/@GYMJONGKOOK" target="_blank" style="margin-top: 15px;">
            		<button style="background-color: #FED14F; cursor: pointer; padding:10px;">youtube 바로가기</button></a>
            	</div>
            </div>

			<div style="display: flex; border: solid 0.5px; color: #FED14F; width: 30vw; padding: 20px; align-items: center;">
            	<div style="display: flex; flex-direction: column; align-items: center;">
            		<img src="images/보운채.jpg" alt="보통사람을 위한 운동채널" style="border: solid 1px; border-radius: 50%; width: 10vw;">
            		<p style="font-weight: bold; cursor: default; color:black;">
            			보통사람을 위한 운동채널
            		</p>
            	</div>
            	<div style="display: flex; flex-direction: column; color:black; margin-left: 15px;">
            		<p style="font-weight: bold; cursor: default;">
            			보통의, 보통에 의한, 보통을 위한 운동정보
            		</p>
            		<a href="https://www.youtube.com/@ordinary_fit" target="_blank" style="margin-top: 15px;">
            		<button style="background-color: #FED14F; cursor: pointer; padding:10px;">youtube 바로가기</button></a>
            	</div>
            </div>            
        </main>
        
        <main style="display: flex; width: 80vw; justify-content: space-around; margin-top: 30px;  margin-bottom: 70px;">
        
       		<div style="display: flex; border: solid 0.5px; color: #FED14F; width: 30vw; padding: 20px; align-items: center;">
            	<div style="display: flex; flex-direction: column; align-items: center;">
            		<img src="images/권혁.jpg" alt="권혁TV" style="border: solid 1px; border-radius: 50%; width: 10vw;">
            		<p style="font-weight: bold; cursor: default; color:black;">
            			권혁TV
            		</p>
            	</div>
            	<div style="display: flex; flex-direction: column; color:black; margin-left: 15px;">
            		<p style="font-weight: bold; cursor: default;">
            			인생은 점진적 과부하
            		</p>
            		<a href="https://www.youtube.com/@Hyeok89" target="_blank" style="margin-top: 15px;">
            		<button style="background-color: #FED14F; cursor: pointer; padding:10px;">youtube 바로가기</button></a>
            	</div>
            </div> 
            
            <div style="display: flex; border: solid 0.5px; color: #FED14F; width: 30vw; padding: 20px; align-items: center;">
            	<div style="display: flex; flex-direction: column; align-items: center;">
            		<img src="images/핏블리.jpg" alt="핏블리" style="border: solid 1px; border-radius: 50%; width: 10vw;">
            		<p style="font-weight: bold; cursor: default; color:black;">
            			핏블리
            		</p>
            	</div>
            	<div style="display: flex; flex-direction: column; color:black; margin-left: 15px;">
            		<p style="font-weight: bold; cursor: default;">
            			운동독학, 누구나 쉽고 전문적으로
            		</p>
            		<a href="https://www.youtube.com/@fitvely" target="_blank" style="margin-top: 15px;">
            		<button style="background-color: #FED14F; cursor: pointer; padding:10px;">youtube 바로가기</button></a>
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
