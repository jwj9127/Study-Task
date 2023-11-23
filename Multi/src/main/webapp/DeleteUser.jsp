<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원탈퇴</title>
</head>
<body style="display: flex; justify-content: center;">

    <!-- 기본 틀 60% -->
    <div style="width: 60vw; display: flex; flex-direction: column; align-items: center; margin-top: 30px;">
	
			<%
				String username = (String) session.getAttribute("username");
    			String userId = (String) session.getAttribute("userid");
			%>
			
			<!-- 로고 -->
		    <header style="display: flex; align-items: center; margin-top: 30px;">
		    	<a href="MainHealth.jsp">
		        	<img src="images/Logo.png" alt="로고" style="width: 20vw;">
		        </a>
		    </header>
			<form method="post" action="DeleteUserClear.jsp"
			style="display: flex; flex-direction: column; align-items: center; border: solid 1px; padding: 50px; margin-top: 100px;">
				<div style="margin-bottom: 25px;">회원 탈퇴를 위해 정보를 입력해주세요</div>
				<div style="margin-bottom: 25px;">
					<%= username %>님의 아이디 : <%= userId %>
                </div>
                <div style="border-bottom: solid 1px; margin-bottom: 25px;">
                	<input type="password" name="userpw" style="width: 25vw; height: 5.7vh; border: none;" placeholder="비밀번호를 입력하세요">
                </div>
                <div>
                    <button style="border: solid 1px; background-color: white; cursor: pointer;" type="submit">탈퇴</button>
                    <button type="button" style="border: solid 1px; background-color: white;" type="reset">
						<a href="MyPage.jsp" style="text-decoration: none; color: black; cursor: pointer; padding: 1px;">취소</a>
					</button>
                </div>
			</form>
    </div>
</body>
</html>
