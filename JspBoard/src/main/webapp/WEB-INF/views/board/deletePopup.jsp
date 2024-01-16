<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h3>�����Ϸ��� ���� ��й�ȣ</h3>

	<h5 id="out"></h5>
	<h5 id="out2"></h5>


	<input id="inputPassword" type="password" name="board_password" />
	<button id="confirmBtn">Ȯ��</button>

	<script
		src="<%=request.getContextPath()%>/resources/board/js/sha256.js"></script>
	<script>
		const out = document.getElementById('out');
		const out2 = document.getElementById('out2');
		const inputPassword = document.getElementById('inputPassword');
		
		const hiddenPassword = opener.document.getElementById('hiddenPassword');
		const delForm = opener.document.getElementById('delForm');
		const confirmBtn = document.getElementById('confirmBtn');
		
		
		
		out.innerText = 'ID : ' + delForm.elements.board_id.value;
		out2.innerText = 'HashCode : ' + delForm.elements.check_password.value;
		
		const getHashedPassword = password => sha256(password).toUpperCase();
		
		confirmBtn.addEventListener('click', ()=>{
			
			const hashedPassword = getHashedPassword(inputPassword.value);
				alert('�������');
				
				if	(hashedPassword === delForm.elements.check_password.value){
					hiddenPassword.value=hashedPassword;
					
					delForm.submit();
					window.close();
				} else {
				alert('���Ʋ��');
			}
				});
	</script>

</body>
</html>