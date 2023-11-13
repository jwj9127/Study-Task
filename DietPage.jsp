<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>다이어트채널</title>
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

        <!-- 메인 -->
        <main style="display: flex; width: 80vw; justify-content: space-around; margin-top: 70px;">
        
        	<div style="display: flex; border: solid 0.5px; color: #FED14F; width: 30vw; padding: 20px; align-items: center;">
            	<div style="display: flex; flex-direction: column; align-items: center;">
            		<img src="images/제이제이.jpg" alt="제이제이살롱드핏" style="border: solid 1px; border-radius: 5%; width: 10vw;">
            		<p style="font-weight: bold; cursor: default; color:black;">
            			제이제이살롱드핏
            		</p>
            	</div>
            	<div style="display: flex; flex-direction: column; color:black; margin-left: 15px;">
            		<p style="font-weight: bold; cursor: default;">
            			✔ 대표 여성 바디크리에이터 <br> ✔ 수많은 여성들의 워너비 <br> (이하생략)
            		</p>
            		<a href="https://www.youtube.com/@JJsalondefit" target="_blank" style="margin-top: 15px;">
            		<button style="background-color:#f8deae; cursor: pointer;">youtube 바로가기</button></a>
            	</div>
            </div>
            
            <div style="display: flex; border: solid 0.5px; color: #FED14F; width: 30vw; padding: 20px; align-items: center;">
            	<div style="display: flex; flex-direction: column; align-items: center;">
            		<img src="images/땅크.jpg" alt="Thankyou BUBU" style="border: solid 1px; border-radius: 5%; width: 10vw;">
            		<p style="font-weight: bold; cursor: default; color:black;">
            			Thankyou BUBU
            		</p>
            	</div>
            	<div style="display: flex; flex-direction: column; color:black; margin-left: 15px;">
            		<p style="font-weight: bold; cursor: default;">
            			저희 부부의 첫 운동은 <br> 홈트가 아닌 운동장 뜀박질이었습니다. <br>
            			원룸에서 신혼생활을 시작했을 무렵, <br> 건강을 챙길 여유가 없어 <br>
            			저는 제자리에 서서 뱃살로 발 앞꿈치가 <br> 가려질 만큼이나 배가 튀어나왔고, <br>
            			오드리는 계속 건강에 <br> 적신호가 왔습니다. <br> (이하생략)
            		</p>
            		<a href="https://www.youtube.com/@thankyoububu" target="_blank" style="margin-top: 15px;">
            		<button style="background-color:#f8deae; cursor: pointer;">youtube 바로가기</button></a>
            	</div>
            </div>
        </main>


        <main style="display: flex; width: 80vw; justify-content: space-around; margin-top: 30px;">
        
        	<div style="display: flex; border: solid 0.5px; color: #FED14F; width: 30vw; padding: 20px; align-items: center;">
            	<div style="display: flex; flex-direction: column; align-items: center;">
            		<img src="images/힙으뜸.jpg" alt="힙으뜸" style="border: solid 1px; border-radius: 5%; width: 10vw;">
            		<p style="font-weight: bold; cursor: default; color:black;">
            			힙으뜸
            		</p>
            	</div>
            	<div style="display: flex; flex-direction: column; color:black; margin-left: 15px;">
            		<p style="font-weight: bold; cursor: default;">
            			🥇국내 1위 여성 운동 크리에이터 <br> 🥇국내 최초 100만 여성 운동 크리에이터 <br> (이하생략)
            		</p>
            		<a href="https://www.youtube.com/@euddeume" target="_blank" style="margin-top: 15px;">
            		<button style="background-color:#f8deae; cursor: pointer;">youtube 바로가기</button></a>
            	</div>
            </div>
            
            <div style="display: flex; border: solid 0.5px; color: #FED14F; width: 30vw; padding: 20px; align-items: center;">
            	<div style="display: flex; flex-direction: column; align-items: center;">
            		<img src="images/써니퍼니.jpg" alt="Sunny Funny Fitness" style="border: solid 1px; border-radius: 5%; width: 10vw;">
            		<p style="font-weight: bold; cursor: default; color:black;">
            			Sunny Funny Fitness
            		</p>
            	</div>
            	<div style="display: flex; flex-direction: column; color:black; margin-left: 15px;">
            		<p style="font-weight: bold; cursor: default;">
            			안녕하세요. Sunny Funny Fitness의 <br> Sunny(써니) 입니다. <br>
            			줌바, 필라테스, 스트레칭, 댄스스포츠를 <br> 가르치고 있는 현직 강사입니다. <br> (이하생략)
            		</p>
            		<a href="https://www.youtube.com/@sunnyfunnyfitness3478" target="_blank" style="margin-top: 15px;">
            		<button style="background-color:#f8deae; cursor: pointer;">youtube 바로가기</button></a>
            	</div>
            </div>
        </main>
        
        <main style="display: flex; width: 80vw; justify-content: space-around; margin-top: 30px;">
        
        	<div style="display: flex; border: solid 0.5px; color: #FED14F; width: 30vw; padding: 20px; align-items: center;">
            	<div style="display: flex; flex-direction: column; align-items: center;">
            		<img src="images/비타민.jpg" alt="비타민신지니" style="border: solid 1px; border-radius: 5%; width: 10vw;">
            		<p style="font-weight: bold; cursor: default; color:black;">
            			비타민신지니
            		</p>
            	</div>
            	<div style="display: flex; flex-direction: column; color:black; margin-left: 15px;">
            		<p style="font-weight: bold; cursor: default;">
            			아는 사람들만 안다는 다이어트 채널! <br> 비타민신지니에 방문해주셔서 <br> 감사드립니다 :D <br>
            			저는 예비 필라테스강사분들을 가르치는 <br> 필라테스 자격증 교육마스터로 활동하고 있으며 그 외 유명 다이어트샵 교육 경력을 가지고 있는데요! <br> (이하생략)
            		</p>
            		<a href="https://www.youtube.com/@vitaminjiny" target="_blank" style="margin-top: 15px;">
            		<button style="background-color:#f8deae; cursor: pointer;">youtube 바로가기</button></a>
            	</div>
            </div>

			<div style="display: flex; border: solid 0.5px; color: #FED14F; width: 30vw; padding: 20px; align-items: center;">
            	<div style="display: flex; flex-direction: column; align-items: center;">
            		<img src="images/소미핏.jpg" alt="소미핏" style="border: solid 1px; border-radius: 5%; width: 10vw;">
            		<p style="font-weight: bold; cursor: default; color:black;">
            			<br> 소미핏
            		</p>
            	</div>
            	<div style="display: flex; flex-direction: column; color:black; margin-left: 15px;">
            		<p style="font-weight: bold; cursor: default;">
            			<br> 무료 운동 프로그램 서비스제공✅ <br> Be the best version of you! 💪🏽😉 <br>
            			안녕하세요. 미서원 입니다. <br> 소미핏 채널은 쉽고 재미있게 운동하는 건강 피트니스 채널입니다. <br> (이하생략)
            		</p>
            		<a href="https://www.youtube.com/@somifit" target="_blank" style="margin-top: 15px;">
            		<button style="background-color:#f8deae; cursor: pointer;">youtube 바로가기</button></a>
            	</div>
            </div>            
        </main>
        
        <main style="display: flex; width: 80vw; justify-content: space-around; margin-top: 30px;  margin-bottom: 70px;">
        
       		<div style="display: flex; border: solid 0.5px; color: #FED14F; width: 30vw; padding: 20px; align-items: center;">
            	<div style="display: flex; flex-direction: column; align-items: center;">
            		<img src="images/이지은.jpg" alt="이지은 다이어트" style="border: solid 1px; border-radius: 5%; width: 10vw;">
            		<p style="font-weight: bold; cursor: default; color:black;">
            			<br> 이지은 다이어트
            		</p>
            	</div>
            	<div style="display: flex; flex-direction: column; color:black; margin-left: 15px;">
            		<p style="font-weight: bold; cursor: default;">
            			<br> 🏅탈다이어트 창시자
            		</p>
            		<a href="https://www.youtube.com/@JinyKilogram" target="_blank" style="margin-top: 15px;">
            		<button style="background-color:#f8deae; cursor: pointer;">youtube 바로가기</button></a>
            	</div>
            </div> 
            
            <div style="display: flex; border: solid 0.5px; color: #FED14F; width: 30vw; padding: 20px; align-items: center;">
            	<div style="display: flex; flex-direction: column; align-items: center;">
            		<img src="images/자세요정.jpg" alt="자세요정" style="border: solid 1px; border-radius: 5%; width: 10vw;">
            		<p style="font-weight: bold; cursor: default; color:black;">
            			자세요정
            		</p>
            	</div>
            	<div style="display: flex; flex-direction: column; color:black; margin-left: 15px;">
            		<p style="font-weight: bold; cursor: default;">
            			🥇국내최초, 국내1위 홈 자세교정클래스 [피지오필로소피] 대표 <br> 🥇국내최초, 국내1위 체형교정전문 여성유튜버 <br> 🥇베스트셀러 [기적의 자세요정] 저자 (이하생략)
            		</p>
            		<a href="https://www.youtube.com/@jsyj" target="_blank" style="margin-top: 15px;">
            		<button style="background-color:#f8deae; cursor: pointer;">youtube 바로가기</button></a>
            	</div>
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
