<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 정보 수정</title>
    <script type="text/javascript">
    function check(){
    	let frm = document.myform;
    	let userpw = frm.userpw;
    	let userphone = frm.userphone;
    	let username = frm.username;
		
		/* 비밀번호 유효성 검사 */
		if(userpw.value == ""){
			alert("비밀번호를 입력해주세요");
			myform.userpw.focus();
			return false;
		}
		
		/* 휴대폰번호 유효성 검사 */
		if(userphone.value == ""){
			alert("전화번호를 입력해주세요");
			myform.userphone.focus(); 
			return false;
		}
		
		/* 이름 유효성 검사 */
		if(username.value == ""){
			alert("이름을 입력해주세요");
			myform.username.focus(); 
			return false;
		}
		else{
			frm.submit();			
		}
    }
    </script>
</head>
<body style="display: flex; justify-content: center; margin: 0px;">

<!-- 기본 틀 80% -->
    <div style="width: 80vw; display: flex; flex-direction: column; align-items: center;">

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
					<%	String username = (String) session.getAttribute("username");	%>
						<div style="display: flex; align-items: center; font-weight: bold; font-size: medium; cursor: default;">
							<p><h3 style="padding-right:5px;"><%= username %>님</h3> 어서오세요</p>
						</div>
					<a href='Logout.jsp' style='color: black; font-weight: bold; font-size: medium; cursor: pointer; text-decoration: none;'>로그아웃</a>
		        	<a href='MyPage.jsp' style='color: black; font-weight: bold; font-size: medium; cursor: pointer; text-decoration: none;'>마이페이지</a>
	            </div>
	        </div>
        </header>
<%	 
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/user";  
     String DB_ID="root";  
     String DB_PASSWORD="1234";
 	 
	 Class.forName("com.mysql.jdbc.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
	
 	 String key = (String) session.getAttribute("userid");
	 String jsql = "select * from signup where userid = ?";
	 PreparedStatement pstmt = con.prepareStatement(jsql);
	 pstmt.setString(1,key);

	 ResultSet rs = pstmt.executeQuery();
	 rs.next();
			
	 String id = rs.getString("userid");
	 String name = rs.getString("username");
	 String phone = rs.getString("userphone");
%>
	<main style="margin-top: 30px; display: flex; flex-direction: column; width: 80vw; justify-content: center; align-items: center;">
	<div style="font-size: 40px;">회원 정보 수정</div>
            <form method="post" action="UserUpdateClear.jsp" name="myform"
                style="display: flex; flex-direction: column; margin-top: 30px; align-items: center;">
                <div style="display: flex; flex-direction: column; width: 30vw; height: 50vh; justify-content: space-around; margin-left: 10vw;">
                
	                	<div style="display: flex;">아이디 : <div style="margin-left: 5vw;"><%=id%></div> </div>
	                	
                        <div style="font-weight: bold; font-size: large;">새 비밀번호 :
                        <input type="password" name="userpw" style="border: none; width: 15vw; height: 6.7vh; padding-left: 10px; outline: none;" placeholder="비밀번호를 입력하세요"></div>
                        
                        <div style="display: flex;">현재 핸드폰 번호 : <div style="margin-left: 1vw;"><%=phone%></div> </div>
                        
                        <div style="font-weight: bold; font-size: large;">수정할 핸드폰 번호 : 
                        <input type="text" name="userphone" style="border: none; width: 15vw; height: 6.7vh; padding-left: 10px; outline: none;" placeholder="휴대폰 번호를 입력하세요 (- 제외 11자리)"></div>
                        
                        <div style="display: flex;">현재 이름 : <div style="margin-left: 3vw;"><%=name%></div> </div>
                        
                        <div style="font-weight: bold; font-size: large;">수정할 이름 :
                        <input type="text" name="username" style="border: none; width: 15vw; height: 6.7vh; padding-left: 10px; outline: none;" placeholder="닉네임을 입력하세요"></div>
                </div>
                <div style="display: flex; width: 40vw; justify-content: space-around; align-items: center; margin-top: 30px;">
                    <button type="button" onclick="check()"
                        style="border: solid 1px; background-color: white; width: 10vw; height: 7vh; cursor: pointer; border-radius: 10px;">회원 정보 수정
                    </button>
                    <button type="button" style="border: solid 1px; background-color: white; width: 10vw; height: 7vh; border-radius: 10px;">
                    	<a href="MyPage.jsp" style="text-decoration: none; color: black; cursor: pointer; padding: 20px;">취소</a>
                    </button>
                </div>
            </form>
        </main>
<%
    } catch (Exception e) {
      out.println(e);	
}
%>
</body>
</html>