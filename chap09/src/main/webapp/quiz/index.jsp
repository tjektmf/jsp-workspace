<%@page import="java.beans.Visibility"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>quiz</title>
</head>
<body>

	<h3># Quiz</h3>

	<ul>
		<li>�� �������� ������ �� ����â �ϳ� ��</li>
		<li>������ �̹��� �ϳ��� üũ�ڽ� ��ư�� ����</li>
		<li>üũ �ڽ��� üũ�ϰ� â�� ������ 30�� ���� �� �������� �����ϴ��� ����â�� ���� ����</li>
	</ul>

	<%
	Cookie[] cookies = request.getCookies();
	for (Cookie cookie : cookies) {
		String cname = cookie.getName();
		if (!cname.equals("timer")) {
			
		} else {
			
		}
	}
	%>
	<script src="/chap09/assets/js/popup/ad.js"></script>

</body>
</html>