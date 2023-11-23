<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <script type="text/javascript">
    function check(){
    	let frm = document.myform;
    	let userid = frm.userid;
    	let userpw = frm.userpw;
    	let userphone = frm.userphone;
    	let username = frm.username;
    	
		/* 아이디 유효성 검사 */
		if(userid.value == ""){
			alert("아이디를 입력해주세요.");
			myform.userid.focus();
			return false;
		}
		
		/* 비밀번호 유효성 검사 */
		if(userpw.value == ""){
			alert("비밀번호를 입력해주세요.");
			myform.userpw.focus();
			return false;
		}
		
		/* 휴대폰번호 유효성 검사 */
		if(userphone.value == ""){
			alert("전화번호를 입력해주세요.");
			myform.userphone.focus(); 
			return false;
		}
		
		/* 이름 유효성 검사 */
		if(username.value == ""){
			alert("이름을 입력해주세요.");
			myform.username.focus(); 
			return false;
		}
		else{
			frm.submit();			
		}
    }
    </script>
</head>
<body style="display: flex; justify-content: center;">

    <!-- 기본 틀 80% -->
    <div style="width: 80vw; display: flex; flex-direction: column; align-items: center; margin-top: 30px;">

        <header style="display: flex; align-items: center; margin-top: 50px;">
            <div style="font-weight: bold; font-size: xx-large; cursor: default;">회원가입</div>
        </header>

        <!-- 회원가입 -->
        <main style="display: flex; width: 80vw; justify-content: center;">
            <form method="post" action="SignUpClear.jsp" name="myform"
                style="display: flex; flex-direction: column; margin-top: 30px; align-items: center;">
                <div
                    style="display: flex; flex-direction: column; width: 30vw; height: 60vh; justify-content: space-around; align-items: center; padding: 10px;">
                        <div style="border-bottom: solid 1px; width: 27vw; height: 7vh; border-color: #adadad;">
                            <input type="text" name="userid" style="border: none; width: 26.4vw; height: 6.7vh; padding-left: 10px; outline: none;"
                                placeholder="아이디를 입력하세요">
                        </div>
                        <div style="border-bottom: solid 1px; width: 27vw; height: 7vh; border-color: #adadad;">
                            <input type="password" name="userpw" style="border: none; width: 26.4vw; height: 6.7vh; padding-left: 10px; outline: none;"
                                placeholder="비밀번호를 입력하세요">
                        </div>
                        <div style="border-bottom: solid 1px; width: 27vw; height: 7vh; border-color: #adadad;">
                            <input type="text" name="userphone" style="border: none; width: 26.4vw; height: 6.7vh; padding-left: 10px; outline: none;"
                                placeholder="휴대폰 번호를 입력하세요 (- 제외 11자리)">
                        </div>
                        <div style="border-bottom: solid 1px; width: 27vw; height: 7vh; border-color: #adadad;">
                            <input type="text" name="username" style="border: none; width: 26.4vw; height: 6.7vh; padding-left: 10px; outline: none;"
                                placeholder="이름을 입력하세요">
                        </div>
                </div>
                <div style="display: flex; width: 40vw; justify-content: space-around; align-items: center; margin-top: 30px;">
                    <button type="button" onclick="check()"
                        style="border: solid 1px; background-color: white; width: 10vw; height: 7vh; cursor: pointer; border-radius: 10px;">회원가입
                    </button>
                    <button type="button" style="border: solid 1px; background-color: white; width: 10vw; height: 7vh; border-radius: 10px;">
                    	<a href="Login.jsp" style="text-decoration: none; color: black; cursor: pointer; padding: 20px;">취소</a>
                    </button>
                </div>
            </form>
        </main>
    </div>
</body>
</html>
