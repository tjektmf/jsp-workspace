<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
// �̹� �α��ε� ���¸� �����̷�Ʈ�� �޸��������� �ٷ� ��������
if (session.getAttribute("login") != null) {
	response.sendRedirect("/chap04/quiz2/memo/main");
	return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α��Τ���</title>
</head>
<body>
	<h3># �α���</h3>
	<!-- 
		form ���� �ۿ� �־ form �� id �Ӽ��� �ְ� �� ��ҿ� form �Ӽ��� �̿��ϸ� form tag ������ ������� ���� �� ���� 
		�Ʒ������� form1�� �� id�� �ְ� �� ��ҿ� �� �Ӽ��� �߰���
	-->
	id :
	<input type="text" name="id" form="form1" />
	<br> pw :
	<input type="password" name="pw" form="form1" />
	<br>

	<button type="submit" form="form1">�α���</button>

	<form id="form1" action="/chap04/quiz2/login/" method="post"></form>

</body>
</html>