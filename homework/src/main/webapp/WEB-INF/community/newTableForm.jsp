<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�۾���</title>
</head>
<body>

	<div>
		<form action="./add" method="post">
			<input name="free_id" type="text" placeholder="�̸�" size="5" />
			<input name="free_pw" type="password" placeholder="��й�ȣ" size="5" /> ��й�ȣ�� ���ڸ����� ���� 
			<input name="free_body" type="text" placeholder="�ϰ� ���� ��!" size="50" height="200">
			<button type="submit" id="submitBtn">Ȯ��</button>

			<script src="<%=request.getContextPath()%>/resources/newTable.js"></script>
		</form>
	</div>
</body>
</html>