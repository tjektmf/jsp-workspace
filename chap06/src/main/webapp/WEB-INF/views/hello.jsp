<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������</title>
</head>
<body>

<h3># �� �������� ���� WEB-INF ���Ͽ� ������ ��θ� ���� ���� ���� ������ �Ұ������� </h3>
<p>�����带 ���ؼ��� ������ ������</p>

	<%
	// attribute ��ü�� ������� Set�� �����ö� (java.util.Set<String>) �� ���� �ٿ�ĳ���� ������� 
	// �⺻������ ���� ���� �� �ִ� Object Ÿ���̱� ����
	// ������� �����µ� �̰� ������Ʈ Ÿ���� ��Ÿ������ ĳ���õƴٴ� ����
	for (String emp : (java.util.Set<String>) request.getAttribute("result")) {
		out.print(String.format("<div> %s </div>", emp));
	}
	%>

</body>
</html>