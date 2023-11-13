<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
</head>
<body style="display: flex; justify-content: center;">

    <!-- 기본 틀 80% -->
    <div style="width: 80vw; display: flex; flex-direction: column; align-items: center; margin-top: 30px;">

        <!-- 로고 -->
        <header style="display: flex; align-items: center; margin-top: 50px;">
            <a href="MainPage.jsp">
                <img src="Logo.png" alt="로고" style="width: 15vw;">
            </a>
        </header>

        <!-- 회원가입 -->
        <main style="display: flex; width: 80vw; justify-content: center;">
            <form method="post" action="SignUpClear.jsp"
                style="display: flex; flex-direction: column; margin-top: 30px; align-items: center;">
                <div
                    style="display: flex; flex-direction: column; border: solid 1px; width: 30vw; height: 60vh; justify-content: space-around; align-items: center; background-color: #FED14F; padding: 10px;">
                    <div>아이디
                        <div style="border: solid 1px; width: 27vw; height: 7vh;">
                            <input type="text" name="userid" style="border: none; width: 26.2vw; height: 6.7vh; padding-left: 10px;"
                                placeholder="ex) abc123">
                        </div>
                    </div>
                    <div>비밀번호
                        <div style="border: solid 1px; width: 27vw; height: 7vh;">
                            <input type="password" name="userpw" style="border: none; width: 26.2vw; height: 6.7vh; padding-left: 10px;"
                                placeholder="ex) 1111">
                        </div>
                    </div>
                    <div>휴대폰 번호
                        <div style="border: solid 1px; width: 27vw; height: 7vh;">
                            <input type="password" name="userpwc" style="border: none; width: 26.2vw; height: 6.7vh; padding-left: 10px;"
                                placeholder="ex) 1111">
                        </div>
                    </div>
                    <div>닉네임
                        <div style="border: solid 1px; width: 27vw; height: 7vh;">
                            <input type="text" name="username" style="border: none; width: 26.2vw; height: 6.7vh; padding-left: 10px;"
                                placeholder="ex) 홍길동">
                        </div>
                    </div>
                </div>
                <div style="display: flex; width: 40vw; justify-content: space-around; align-items: center; margin-top: 30px;">
                    <button type="submit"
                        style="border: solid 1px; background-color: #FED14F; width: 10vw; height: 7vh; cursor: pointer; border-radius: 10px;">회원가입
                    </button>
                    <button type="button" style="border: solid 1px; background-color: #FED14F; width: 10vw; height: 7vh; border-radius: 10px;">
                    	<a href="Login.jsp" style="text-decoration: none; color: black; cursor: pointer; padding: 20px;">취소</a>
                    </button>
                </div>
            </form>
        </main>
    </div>
</body>
</html>
