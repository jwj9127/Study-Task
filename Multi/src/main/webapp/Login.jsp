<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
</head>
</html>
<body style="display: flex; justify-content: center; margin: 0px;">

    <!-- 기본 틀 80% -->
    <div style="width: 80vw; height: 70vh; display: flex; flex-direction: column; align-items: center;">
    
    	<header style="display: flex; justify-content: center; width: 99.9vw; background-color: #FED14F;">
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
					<a href='Login.jsp' style='color: black; cursor: pointer; font-weight: bold; font-size: medium; text-decoration: none;'>로그인</a>
					<a href='MyPage.jsp' style='color: black; font-weight: bold; font-size: medium; cursor: pointer; text-decoration: none;'>마이페이지</a>
	            </div>

        	</div>
        </header>
		<!-- 로그인 -->
			<main style="height: 90vh; display: flex; align-items: center;">
		    	<form method="post" action="LoginClear.jsp"
		        	style="display: flex; flex-direction: column; height: 30vh; justify-content: space-around; margin-top: 100px;">
		            <div style="border: solid 1px; width: 35vw; height: 7vh; border-radius: 10px;">
		            	<input type="text" name="userid" style="margin-left: 5.1px;border: none; width: 33vw; height: 6.6vh; padding-left: 15px; outline: none;"
		                	placeholder="아이디를 입력하세요">
		            </div>
			        <div style="border: solid 1px; width: 35vw; height: 7vh; border-radius: 10px;">
			            <input type="password" name="userpw" style="margin-left: 5.1px; border: none; width: 33vw; height: 6.6vh; padding-left: 15px; outline: none;"
			                placeholder="비밀번호를 입력하세요">
			        </div>
			        <div>
		            	<button type="submit" style="border: none; background-color: #FED14F; width: 35.1vw; height: 7vh; cursor: pointer; border-radius: 10px;">로그인</button>
		                </div>
		        </form>
		    </main>
		
		        <!-- 회원가입 등 -->
		        <main style="display: flex; width: 25vw; justify-content: space-around;">
		            <a href="SignUp.jsp" style="text-decoration: none; color: black;">
		                <div style="border-right: solid 1px; padding-right: 30px;">회원가입</div>
		            </a>
		            <a href="FindId.jsp" style="text-decoration: none; color: black;">
		            	<div>아이디 찾기</div>
		            </a>
		            <a href="SetPw.jsp" style="text-decoration: none; color: black;">
		            	<div style="border-left: solid 1px; padding-left: 30px;">비밀번호 찾기</div>
		            </a>
		        </main>
    </div>
</body>
