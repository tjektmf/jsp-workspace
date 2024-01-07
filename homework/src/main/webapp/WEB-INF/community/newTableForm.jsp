<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>글쓰기</title>
</head>
<body>

	<div>
		<form action="./add" method="post">
			<input name="free_id" type="text" placeholder="이름" size="5" />
			<input name="free_pw" type="password" placeholder="비밀번호" size="5" /> 비밀번호는 네자리이하 숫자 
			<input name="free_body" type="text" placeholder="하고 싶은 말!" size="50" height="200">
			<button type="submit" id="submitBtn">확인</button>

			<script src="<%=request.getContextPath()%>/resources/newTable.js"></script>
		</form>
	</div>
</body>
</html>