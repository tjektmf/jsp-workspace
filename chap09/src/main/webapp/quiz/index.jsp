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
		<li>이 페이지에 접속할 때 광고창 하나 뜸</li>
		<li>적당한 이미지 하나와 체크박스 버튼이 있음</li>
		<li>체크 박스를 체크하고 창을 닫으면 30초 동안 이 페이지에 접속하더라도 광고창이 뜨지 않음</li>
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