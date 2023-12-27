<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
// 이미 로그인된 상태면 리다이렉트로 메모페이지로 바로 보내버림
if (session.getAttribute("login") != null) {
	response.sendRedirect("/chap04/quiz2/memo/main");
	return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인ㄱㄱ</title>
</head>
<body>
	<h3># 로그인</h3>
	<!-- 
		form 범위 밖에 있어도 form 에 id 속성을 주고 각 요소에 form 속성을 이용하면 form tag 범위와 상관없이 엮을 수 있음 
		아래에서는 form1을 폼 id로 주고 각 요소에 폼 속성을 추가함
	-->
	id :
	<input type="text" name="id" form="form1" />
	<br> pw :
	<input type="password" name="pw" form="form1" />
	<br>

	<button type="submit" form="form1">로그인</button>

	<form id="form1" action="/chap04/quiz2/login/" method="post"></form>

</body>
</html>