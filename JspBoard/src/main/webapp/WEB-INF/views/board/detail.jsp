<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ㅇㅅㅇ/</title>
</head>
<body>
<h2>detail good</h2>
<a href="./list">뒤로가기</a> <br />
<hr />

글 제목 : <input type="text" value="${detail.board_title}" readonly/> <br />
글쓴사람 : <input type="text"  value="${detail.board_writer}"readonly/>
조회수 : ${detail.view_count} 작성일 : ${detail.write_date}<br />
<textarea rows="10" cols="30"readonly>${detail.board_content}</textarea>

</body>
</html>