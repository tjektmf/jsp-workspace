<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h3>비밀번호 확인</h3>

	<h5 id="out"></h5>
	<h5 id="out2"></h5>


	<!-- name 은 어트리뷰트로 보내졌을때 파라미터의 이름이고 id는 말그대로 요소의 ID -->
	<input id="inputPassword" type="password" name="board_password" />
	<button id="confirmBtn">확인</button>
	<hr />

		<!-- <%=request.getContextPath()%> =  /JspBoard -->
	<script>
		src="<%=request.getContextPath()%>/resources/board/js/sha256.js"></script>
	<script>
		const out = document.getElementById('out');
		const out2 = document.getElementById('out2');
		const inputPassword = document.getElementById('inputPassword');
		
		// 이전 화면인 detail 에서 요소를 가져오는거임 
		// 팝업을 만들때 .open() 로 만들었으니 이걸 만든건 opener()임
		const hiddenPassword = opener.document.getElementById('hiddenPassword');
		const delForm = opener.document.getElementById('delForm');
		
		const confirmBtn = document.getElementById('confirmBtn');
		
		
		
		out.innerText = 'ID : ' + delForm.elements.board_id.value;
		out2.innerText = 'HashCode : ' + delForm.elements.check_password.value;
		
		const getHashedPassword = password => sha256(password).toUpperCase();
		
		confirmBtn.addEventListener('click', ()=>{
			
			const hashedPassword = getHashedPassword(inputPassword.value);
				alert('비번같음');
				
				if	(hashedPassword === delForm.elements.check_password.value){
					hiddenPassword.value=hashedPassword;
					
					delForm.submit();
					window.close();
				} else {
				alert('비번틀림');
			}
				});
	</script>

</body>
</html>