<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������/</title>
</head>
<body>

<!-- WEB-INF ������ ��������� �ּ�â���� ���� �Ұ��� -->
	<h2>File Include</h2>

	<ol>
		<li>JSP include : ������ó�� request�� response�� �ٸ� jsp�� �״�� ������ ó���� �ϰ�
			�� ����� �ٽ� �������� ������� �ٸ� �������� ��� ���ٰ� �ٽ� ���ƿ��� ����̱� ������ include�ϴ� ������������
			pageScope ���� ����� �� ����</li>
		<li>File include : �ش� ������ �������ϱ� ���� ��°�� ���� �������� �����ع����� ������� �ٸ� ���ϰ�
			�ϳ��� ������ �� �����ϵǱ� ������ pageScope�� ��ȿ�ϴ�</li>
	</ol>
	
	<script src="./include1/index.jsp">JSP include</script>
	<script src="./include2/index.jsp">File include</script>
	
</body>
</html>