<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Quiz</title>
</head>
<body>

	<h3># �䱸����</h3>

	<ul>
		<li>���̵�� ��й�ȣ�� �Է��ϰ� �α��� ��ư�� ���� �α����� �� �� �ִ�</li>
		<li>ȸ�������� ���̵�� ��й�ȣ�� �Է��ϸ� �Ϸ��(�ߺ�üũ�� �ؾ��ϸ�, ���� ������ application�� ���)</li>
		<li>�α��ο� ������ ����� ������ �����Ǵ� ���� �α����� ��� ������</li>
		<li>�α��� �� ����� ���ο� �޸� ����� �� �ְ�, ���� �ۼ��� �޸� �� �� ����</li>
		<li>������ ��������� �� ��� ȸ������ �� �޸� ������� ������</li>
		<li>������ ������ ������ ������ ��� ������ quiz ���� �ؿ� ����</li>
	</ul>

	<form action="/chap04/quiz/login.jsp" method="get">
	
		<input id="uniqueInput" type="text" placeholder="ID" value=""name="id" />
	<!--  	<button id="unique">�ߺ�üũ</button><br> <br> -->
		
		<input id="passInput" type="text" placeholder="password" value="" name="pw" />
		 <br> <br>
		 
		<input type="submit" value="�α���" /> <br /> <br />

	</form>
	<button id="member">ȸ������</button>

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