<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<ol>
		<li>DB에 게시판 정보를 담을 수 있는 테이블 구조를 설계</li>
		<li>필요한 기능은 댓글을 달 수 있는 게시판임</li>
		<li>글을 쓸 때 해당 글에 대한 비밀번호 설정이 필요</li>
		<li>글을 수정/삭제할 때 해당 글의 비밀번호가 맞으면 수정/삭제가 가능</li>
		<li>비밀번호는 해쉬값으로 저장</li>
		<li>글을 삭제하면 글의 댓글도 db에서 삭제</li>
		<li>게시판 디자인 + 대댓글기능</li>
	</ol>

</body>
</html>