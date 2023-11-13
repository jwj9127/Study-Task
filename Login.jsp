<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
</head>
<body style="display: flex; justify-content: center;">

    <!-- 기본 틀 80% -->
    <div style="width: 80vw; display: flex; flex-direction: column; align-items: center; margin-top: 30px;">

        <!-- 로고 -->
        <header style="display: flex; align-items: center; margin-top: 80px;">
            <a href="MainPage.jsp">
                <img src="Logo.png" alt="로고" style="width: 15vw;">
            </a>
        </header>

        <!-- 로그인 -->
        <main>
            <form method="post" action="LoginClear.jsp"
                style="display: flex; flex-direction: column; height: 30vh; justify-content: space-around; margin-top: 100px;">
                <div style="border: solid 1px; width: 35vw; height: 7vh;">
                    <input type="text" name="userid" style="border: none; width: 33.9vw; height: 6.7vh; padding-left: 15px;"
                        placeholder="아이디를 입력하세요">
                </div>
                <div style="border: solid 1px; width: 35vw; height: 7vh;">
                    <input type="password" name="userpw" style="border: none; width: 33.9vw; height: 6.7vh; padding-left: 15px;"
                        placeholder="비밀번호를 입력하세요">
                </div>
                <div>
                    <button type="submit" style="border: none; background-color: #FED14F; width: 35.1vw; height: 7vh; cursor: pointer;">로그인</button>
                </div>
            </form>
        </main>

        <!-- 회원가입 등 -->
        <main style="display: flex; width: 25vw; justify-content: space-around;">
            <a href="SignUp.jsp" style="text-decoration: none; color: black;">
                <div style="border-right: solid 1px; padding-right: 30px;">회원가입</div>
            </a>
            <a href="FindID.jsp" style="text-decoration: none; color: black;">
            	<div>아이디 찾기</div>
            </a>
            <a href="SetPW.jsp" style="text-decoration: none; color: black;">
            	<div style="border-left: solid 1px; padding-left: 30px;">비밀번호 찾기</div>
            </a>
        </main>
    </div>
</body>
</html>
