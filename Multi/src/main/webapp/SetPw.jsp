<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<body style="display: flex; justify-content: center; margin: 0px;">

<script type="text/javascript">
    function check(){
    	let frm = document.myform;
    	let userid = frm.userid;
    	let userphone = frm.userphone;
    	let username = frm.username;
    	let userpw = frm.userpw;
		
		/* 아이디 유효성 검사 */
		if(userid.value == ""){
			alert("아이디를 입력해주세요.");
			myform.userid.focus(); 
			return false;
		}
    	
		/* 이름 유효성 검사 */
		if(username.value == ""){
			alert("이름를 입력해주세요.");
			myform.username.focus(); 
			return false;
		}
		
		/* 전화번호 유효성 검사 */
		if(userphone.value == ""){
			alert("전화번호를 입력해주세요.");
			myform.userphone.focus(); 
			return false;
		}
		
		/* 비밀번호 유효성 검사 */
		if(userpw.value == ""){
			alert("새 비밀번호를 입력해주세요.");
			myform.userpw.focus(); 
			return false;
		}
		else{
			frm.submit();			
		}
    }
    </script>

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
		<!-- 비밀번호 재설정 찾기 -->
			<main style="height: 90vh; display: flex; flex-direction: column; align-items: center; margin-top: 10vh">
				<div style="font-weight: bold; font-size: xx-large; cursor: default;">비밀번호 찾기</div>
		    	<form method="post" action="SetPwClear.jsp" name="myform"
		        	style="display: flex; flex-direction: column; height: 50vh; justify-content: space-around; margin-top: 100px;">
		        	<div style="border: solid 1px; width: 25vw; height: 7vh; border-radius: 10px;">
		            	<input type="text" name="userid" style="margin-left: 5.1px;border: none; width: 20vw; height: 6.6vh; padding-left: 15px; outline: none;"
		                	placeholder="아이디를 입력하세요">
		            </div>
		            <div style="border: solid 1px; width: 25vw; height: 7vh; border-radius: 10px;">
		            	<input type="text" name="username" style="margin-left: 5.1px;border: none; width: 20vw; height: 6.6vh; padding-left: 15px; outline: none;"
		                	placeholder="이름을 입력하세요">
		            </div>
			        <div style="border: solid 1px; width: 25vw; height: 7vh; border-radius: 10px;">
			            <input type="text" name="userphone" style="margin-left: 5.1px; border: none; width: 20vw; height: 6.6vh; padding-left: 15px; outline: none;"
			                placeholder="전화번호를 입력하세요">
			        </div>
			        <div style="border: solid 1px; width: 25vw; height: 7vh; border-radius: 10px;">
			            <input type="password" name="userpw" style="margin-left: 5.1px; border: none; width: 20vw; height: 6.6vh; padding-left: 15px; outline: none;"
			                placeholder="새 비밀번호를 입력하세요">
			        </div>
			        <div>
		            	<button type="button" style="border: none; background-color: #FED14F; width: 25vw; height: 7vh; cursor: pointer; border-radius: 10px;" onclick= "check()";>비밀번호 재설정하기</button>
		                </div>
		        </form>
		    </main>
    </div>
</body>
</html>