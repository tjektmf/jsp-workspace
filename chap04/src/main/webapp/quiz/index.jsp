<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Quiz</title>
</head>
<body>

	<h3># 요구사항</h3>

	<ul>
		<li>아이디와 비밀번호를 입력하고 로그인 버튼을 눌러 로그인을 할 수 있다</li>
		<li>회원가입은 아이디와 비밀번호만 입력하면 완료됨(중복체크는 해야하며, 가입 정보는 application에 등록)</li>
		<li>로그인에 성공한 사람은 세션이 유지되는 동안 로그인이 계속 유지됨</li>
		<li>로그인 한 사람은 새로운 메모를 등록할 수 있고, 전에 작성한 메모도 볼 수 있음</li>
		<li>서버를 재시작했을 때 모든 회원정보 및 메모가 사라져도 괜찮음</li>
		<li>페이지 개수에 제한은 없으며 모든 내용은 quiz 폴더 밑에 만듦</li>
	</ul>

	<form action="/chap04/quiz/login.jsp" method="get">
	
		<input id="uniqueInput" type="text" placeholder="ID" value=""name="id" />
	<!--  	<button id="unique">중복체크</button><br> <br> -->
		
		<input id="passInput" type="text" placeholder="password" value="" name="pw" />
		 <br> <br>
		 
		<input type="submit" value="로그인" /> <br /> <br />

	</form>
	<button id="member">회원가입</button>

	<script>
	const uniqueBtn = document.getElementById("unique");
	const uniqueInput = document.getElementById("uniqueInput");
	const memberBtn = document.getElementById("member");
	const passInput = document.getElementById("passInput");
	

	uniqueBtn.addEventListener('click', (e)=>{
		location.href = '/chap04/quiz/login.jsp?id=' + uniqueInput.value + '&pw='+ passInput.value;
		
	});
	
	memberBtn.addEventListener('click', (e)=>{
		location.href = '/chap04/quiz/login.jsp?id=' + uniqueInput.value + '&pw='+ passInput.value;
		
	});

	</script>
</body>
</html>